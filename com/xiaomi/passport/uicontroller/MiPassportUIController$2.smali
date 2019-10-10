.class Lcom/xiaomi/passport/uicontroller/MiPassportUIController$2;
.super Lcom/xiaomi/passport/uicontroller/MiPassportUIController$UIConnector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/uicontroller/MiPassportUIController;->a(Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginUICallback;)Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/uicontroller/MiPassportUIController$UIConnector<",
        "Lcom/xiaomi/accountsdk/account/data/MiLoginResult;",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;

.field final synthetic b:Lcom/xiaomi/passport/uicontroller/MiPassportUIController;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/MiPassportUIController;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;)V
    .registers 4

    .line 77
    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$2;->b:Lcom/xiaomi/passport/uicontroller/MiPassportUIController;

    iput-object p3, p0, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$2;->a:Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$UIConnector;-><init>(Lcom/xiaomi/passport/uicontroller/MiPassportUIController;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V

    return-void
.end method


# virtual methods
.method public e()Lcom/xiaomi/accountsdk/account/data/MiLoginResult;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$2;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService;

    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$2;->a:Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;

    invoke-interface {v0, v1}, Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService;->a(Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;)Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

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

    .line 77
    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$2;->e()Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    move-result-object v0

    return-object v0
.end method
