import * as functions from "firebase-functions";
import * as admin from "firebase-admin";

admin.initializeApp();

export const onVideoCreated = functions
  .region("asia-northeast3")
  .firestore.document("videos/{videoId}")
  .onCreate(async (snapshot, context) => {
    await snapshot.ref.update({ hello: "from functions" });
  });
