.class public interface abstract Lcn/kuaipan/kss/KssUpload;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/kuaipan/kss/KssUpload$UploadTransControl;,
        Lcn/kuaipan/kss/KssUpload$UploadResult;,
        Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/io/InputStream;)Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract a([B)Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract a()Lcn/kuaipan/kss/KssUpload$UploadResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract a(Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;Lcn/kuaipan/kss/KssDef$OnUpDownload;Lcn/kuaipan/kss/KssDef$NetState;)Z
.end method

.method public abstract b()V
.end method
