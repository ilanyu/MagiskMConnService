.class public abstract Lcom/xiaomi/micloudsdk/remote/a;
.super Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker<",
        "TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 12
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z
    .registers 4

    .line 24
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "com.xiaomi.account"

    .line 25
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .registers 5

    const-string v0, "com.xiaomi.account.action.BIND_XIAOMI_ACCOUNT_SERVICE"

    const-string v1, "android.intent.action.BIND_XIAOMI_ACCOUNT_SERVICE"

    .line 19
    invoke-static {p1, v0, p2}, Lcom/xiaomi/micloudsdk/remote/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 20
    invoke-static {p1, v1, p2}, Lcom/xiaomi/micloudsdk/remote/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method
