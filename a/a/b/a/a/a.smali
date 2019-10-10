.class public La/a/b/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 2

    .line 13
    :try_start_0
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/utils/IXiaomiAccountServiceProxy;->getSnsAccessToken(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception p0

    .line 15
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_8
    return-void
.end method
