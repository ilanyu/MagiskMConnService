.class Lcom/xiaomi/passport/uicontroller/MiPassportUIController$3;
.super Lcom/xiaomi/passport/uicontroller/MiPassportUIController$UIConnector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/uicontroller/MiPassportUIController;->a(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginUICallback;)Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginFuture;
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
.field final synthetic a:Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;

.field final synthetic b:Lcom/xiaomi/passport/uicontroller/MiPassportUIController;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/MiPassportUIController;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;)V
    .registers 4

    .line 89
    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$3;->b:Lcom/xiaomi/passport/uicontroller/MiPassportUIController;

    iput-object p3, p0, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$3;->a:Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;

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

    .line 92
    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$3;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService;

    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$3;->a:Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;

    invoke-interface {v0, v1}, Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService;->a(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;)Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

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

    .line 89
    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$3;->e()Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    move-result-object v0

    return-object v0
.end method
