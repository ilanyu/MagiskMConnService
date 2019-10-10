.class Lcom/xiaomi/passport/uicontroller/MiPassportUIController$5;
.super Lcom/xiaomi/passport/uicontroller/MiPassportUIController$UIConnector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/uicontroller/MiPassportUIController;->a(Ljava/lang/String;Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationAuthUICallback;)Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationAuthFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/uicontroller/MiPassportUIController$UIConnector<",
        "Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;",
        "Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/passport/uicontroller/MiPassportUIController;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/MiPassportUIController;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;Ljava/lang/String;)V
    .registers 4

    .line 119
    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$5;->b:Lcom/xiaomi/passport/uicontroller/MiPassportUIController;

    iput-object p3, p0, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$5;->a:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$UIConnector;-><init>(Lcom/xiaomi/passport/uicontroller/MiPassportUIController;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V

    return-void
.end method


# virtual methods
.method public e()Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$5;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService;

    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$5;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$5;->e()Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;

    move-result-object v0

    return-object v0
.end method
