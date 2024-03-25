import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:untitled1/models/movie_model.dart';

class FirebaseFunctions {
  static CollectionReference<MovieWatchListModel>
      getMovieWatchListCollection() {
    return FirebaseFirestore.instance
        .collection("watchList")
        .withConverter<MovieWatchListModel>(
          fromFirestore: (snapshot, _) =>
              MovieWatchListModel.fromJson(snapshot.data()),
          toFirestore: (movie, options) => movie.toJson(),
        );
  }

  static Future<void> addMovieToFireStore(MovieWatchListModel movie) {
    final collections = getMovieWatchListCollection();
    final docRef = collections.doc(movie.id.toString());
    return docRef.set(movie);
  }

  static Stream<QuerySnapshot<MovieWatchListModel>> getMoviesFromFireStore() {
    final collection = getMovieWatchListCollection();
    return collection
        // .orderBy("time", descending: true)
        .snapshots();
  }

  static Future<void> deleteTask(String id) {
    return getMovieWatchListCollection().doc(id).delete();
  }

  static Future<bool> searchMovieById(String id) async {
    final snapshot = await getMovieWatchListCollection().doc(id).get();
    return snapshot.exists;
  }
}
