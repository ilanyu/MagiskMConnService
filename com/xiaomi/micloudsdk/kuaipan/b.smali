.class public Lcom/xiaomi/micloudsdk/kuaipan/b;
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

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "MiCloudFileMaster"


# instance fields
.field a:Lcn/kuaipan/android/kss/KssMaster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/kuaipan/android/kss/KssMaster<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor<",
            "-TT;>;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcn/kuaipan/android/kss/KssMaster;

    new-instance v1, Lcom/xiaomi/opensdk/file/sdk/b;

    invoke-direct {v1}, Lcom/xiaomi/opensdk/file/sdk/b;-><init>()V

    invoke-direct {v0, p1, p2, v1}, Lcn/kuaipan/android/kss/KssMaster;-><init>(Landroid/content/Context;Lcn/kuaipan/android/kss/c;Lcn/kuaipan/android/kss/b;)V

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/kuaipan/b;->a:Lcn/kuaipan/android/kss/KssMaster;

    return-void
.end method


# virtual methods
.method public a(Lcn/kuaipan/android/kss/KssMaster$IRemote;Ljava/io/File;Lcn/kuaipan/android/http/IKscTransferListener;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/File;",
            "Lcn/kuaipan/android/http/IKscTransferListener;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/kuaipan/b;->a:Lcn/kuaipan/android/kss/KssMaster;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/kuaipan/android/kss/KssMaster;->a(Lcn/kuaipan/android/kss/KssMaster$IRemote;Ljava/io/File;Lcn/kuaipan/android/http/IKscTransferListener;Z)V
    :try_end_5
    .catch Lcom/xiaomi/opensdk/a/c; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 42
    new-instance p2, Lcom/xiaomi/micloudsdk/c/d;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/a/c;->a()I

    move-result p3

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/a/c;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/xiaomi/micloudsdk/c/d;-><init>(ILjava/lang/String;)V

    throw p2
.end method

.method public a(Ljava/io/File;Lcn/kuaipan/android/kss/KssMaster$IRemote;Lcn/kuaipan/android/http/IKscTransferListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "TT;",
            "Lcn/kuaipan/android/http/IKscTransferListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/kuaipan/b;->a:Lcn/kuaipan/android/kss/KssMaster;

    invoke-virtual {v0, p1, p2, p3}, Lcn/kuaipan/android/kss/KssMaster;->a(Ljava/io/File;Lcn/kuaipan/android/kss/KssMaster$IRemote;Lcn/kuaipan/android/http/IKscTransferListener;)V
    :try_end_5
    .catch Lcom/xiaomi/opensdk/a/c; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 33
    new-instance p2, Lcom/xiaomi/micloudsdk/c/d;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/a/c;->a()I

    move-result p3

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/a/c;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/xiaomi/micloudsdk/c/d;-><init>(ILjava/lang/String;)V

    throw p2
.end method
