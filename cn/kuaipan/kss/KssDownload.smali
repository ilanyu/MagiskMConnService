.class public interface abstract Lcn/kuaipan/kss/KssDownload;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/kuaipan/kss/KssDownload$DownloadTransControl;,
        Lcn/kuaipan/kss/KssDownload$BlockDownloadInfo;,
        Lcn/kuaipan/kss/KssDownload$RequestDownloadInfo;
    }
.end annotation


# virtual methods
.method public abstract a(Lcn/kuaipan/kss/KssDownload$DownloadTransControl;)Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract a(Ljava/io/OutputStream;I)Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract a()V
.end method

.method public abstract a(Lcn/kuaipan/kss/KssDownload$RequestDownloadInfo;Lcn/kuaipan/kss/KssDef$OnUpDownload;Lcn/kuaipan/kss/KssDef$NetState;)Z
.end method
