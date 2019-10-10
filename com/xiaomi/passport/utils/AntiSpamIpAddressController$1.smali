.class Lcom/xiaomi/passport/utils/AntiSpamIpAddressController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/utils/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/utils/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/utils/a;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/xiaomi/passport/utils/AntiSpamIpAddressController$1;->a:Lcom/xiaomi/passport/utils/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 43
    invoke-static {}, Lcom/xiaomi/passport/utils/a;->d()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 44
    iget-object v0, p0, Lcom/xiaomi/passport/utils/AntiSpamIpAddressController$1;->a:Lcom/xiaomi/passport/utils/a;

    invoke-static {v0}, Lcom/xiaomi/passport/utils/a;->a(Lcom/xiaomi/passport/utils/a;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, "AntiSpamIpAddressController"

    const-string v2, "ipAddress not empty"

    .line 46
    invoke-static {v1, v2}, Lcom/xiaomi/accountsdk/utils/d;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {}, Lcom/xiaomi/passport/utils/a;->e()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 48
    invoke-static {}, Lcom/xiaomi/passport/utils/a;->e()Ljava/util/Map;

    move-result-object v1

    const-string v2, "ipAddress"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_29
    invoke-static {}, Lcom/xiaomi/passport/utils/a;->f()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
