.class public interface abstract Lcn/kuaipan/android/kss/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcn/kuaipan/android/kss/KssMaster$IRemote;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Lcn/kuaipan/android/kss/KssMaster$IRemote;)Lcn/kuaipan/android/kss/IKssDownloadRequestResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcn/kuaipan/android/kss/IKssDownloadRequestResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/opensdk/a/c;
        }
    .end annotation
.end method

.method public abstract a(Ljava/io/File;Lcn/kuaipan/android/kss/KssMaster$IRemote;Lcn/kuaipan/android/kss/upload/UploadFileInfo;)Lcn/kuaipan/android/kss/IKssUploadRequestResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "TT;",
            "Lcn/kuaipan/android/kss/upload/UploadFileInfo;",
            ")",
            "Lcn/kuaipan/android/kss/IKssUploadRequestResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/opensdk/a/c;
        }
    .end annotation
.end method

.method public abstract a(Ljava/io/File;Lcn/kuaipan/android/kss/KssMaster$IRemote;Lcn/kuaipan/android/kss/upload/b;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "TT;",
            "Lcn/kuaipan/android/kss/upload/b;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/opensdk/a/c;
        }
    .end annotation
.end method
