.class abstract Lcom/xiaomi/passport/uicontroller/MiPassportUIController$UIConnector;
.super Lcom/xiaomi/accountsdk/futureservice/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/uicontroller/MiPassportUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "UIConnector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelDataType:",
        "Ljava/lang/Object;",
        "UIDataType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/accountsdk/futureservice/b<",
        "Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService;",
        "TModelDataType;TUIDataType;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/xiaomi/passport/uicontroller/MiPassportUIController;


# direct methods
.method protected constructor <init>(Lcom/xiaomi/passport/uicontroller/MiPassportUIController;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/futureservice/ClientFuture<",
            "TModelDataType;TUIDataType;>;)V"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$UIConnector;->c:Lcom/xiaomi/passport/uicontroller/MiPassportUIController;

    .line 132
    invoke-static {p1}, Lcom/xiaomi/passport/uicontroller/MiPassportUIController;->a(Lcom/xiaomi/passport/uicontroller/MiPassportUIController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/passport/uicontroller/MiPassportUIController;->b(Lcom/xiaomi/passport/uicontroller/MiPassportUIController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/xiaomi/passport/uicontroller/MiPassportUIController;->c(Lcom/xiaomi/passport/uicontroller/MiPassportUIController;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/xiaomi/accountsdk/futureservice/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2

    .line 128
    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$UIConnector;->b(Landroid/os/IBinder;)Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/os/IBinder;)Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService;
    .registers 2

    .line 137
    invoke-static {p1}, Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService$Stub;->a(Landroid/os/IBinder;)Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService;

    move-result-object p1

    return-object p1
.end method

.method protected d()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TModelDataType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$UIConnector;->f()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract f()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TModelDataType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
