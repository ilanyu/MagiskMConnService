.class Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil$1;
.super Lcom/xiaomi/accountsdk/futureservice/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/accountsdk/utils/o;->c()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/accountsdk/futureservice/b<",
        "Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/accountsdk/utils/o;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/utils/o;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V
    .registers 6

    .line 63
    iput-object p1, p0, Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil$1;->a:Lcom/xiaomi/accountsdk/utils/o;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/xiaomi/accountsdk/futureservice/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil$1;->b(Landroid/os/IBinder;)Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/os/IBinder;)Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;
    .registers 2

    .line 71
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService$Stub;->a(Landroid/os/IBinder;)Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic d()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil$1;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil$1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil$1;->a:Lcom/xiaomi/accountsdk/utils/o;

    invoke-static {v1}, Lcom/xiaomi/accountsdk/utils/o;->a(Lcom/xiaomi/accountsdk/utils/o;)Landroid/accounts/Account;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;->d(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
