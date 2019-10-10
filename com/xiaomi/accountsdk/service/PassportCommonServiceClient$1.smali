.class final Lcom/xiaomi/accountsdk/service/PassportCommonServiceClient$1;
.super Lcom/xiaomi/accountsdk/service/PassportCommonServiceClient$ConnectorBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/accountsdk/service/PassportCommonServiceClient;->a(Landroid/content/Context;Ljava/lang/String;II)Lcom/xiaomi/accountsdk/service/DeviceInfoResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/accountsdk/service/PassportCommonServiceClient$ConnectorBase<",
        "Lcom/xiaomi/accountsdk/service/DeviceInfoResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;Ljava/lang/String;I)V
    .registers 5

    .line 41
    iput-object p3, p0, Lcom/xiaomi/accountsdk/service/PassportCommonServiceClient$1;->a:Ljava/lang/String;

    iput p4, p0, Lcom/xiaomi/accountsdk/service/PassportCommonServiceClient$1;->b:I

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/accountsdk/service/PassportCommonServiceClient$ConnectorBase;-><init>(Landroid/content/Context;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V

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

    .line 41
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/service/PassportCommonServiceClient$1;->e()Lcom/xiaomi/accountsdk/service/DeviceInfoResult;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/xiaomi/accountsdk/service/DeviceInfoResult;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/service/PassportCommonServiceClient$1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/IPassportCommonService;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/service/PassportCommonServiceClient$1;->a:Ljava/lang/String;

    iget v2, p0, Lcom/xiaomi/accountsdk/service/PassportCommonServiceClient$1;->b:I

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/passport/IPassportCommonService;->a(Ljava/lang/String;I)Lcom/xiaomi/accountsdk/service/DeviceInfoResult;

    move-result-object v0

    return-object v0
.end method
