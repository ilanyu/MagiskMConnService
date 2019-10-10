.class Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$1;
.super Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$ServiceTokenServiceConnector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;Ljava/lang/String;Landroid/content/Context;)V
    .registers 6

    .line 45
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$1;->c:Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;

    iput-object p4, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$1;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$1;->b:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$ServiceTokenServiceConnector;-><init>(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;)V

    return-void
.end method


# virtual methods
.method protected synthetic d()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$1;->e()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/IPassportServiceTokenService;

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaomi/passport/IPassportServiceTokenService;->a(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$1;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/xiaomi/passport/servicetoken/f;->a(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0
.end method
