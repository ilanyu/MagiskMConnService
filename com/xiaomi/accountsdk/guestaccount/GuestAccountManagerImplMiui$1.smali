.class Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$1;
.super Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$GuestAccountServiceConnector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;->a(Lcom/xiaomi/accountsdk/guestaccount/data/f;)Lcom/xiaomi/accountsdk/guestaccount/data/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$GuestAccountServiceConnector<",
        "Lcom/xiaomi/accountsdk/guestaccount/data/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/accountsdk/guestaccount/data/f;

.field final synthetic b:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;Lcom/xiaomi/accountsdk/futureservice/c;Lcom/xiaomi/accountsdk/guestaccount/data/f;)V
    .registers 4

    .line 52
    iput-object p1, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$1;->b:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;

    iput-object p3, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$1;->a:Lcom/xiaomi/accountsdk/guestaccount/data/f;

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$GuestAccountServiceConnector;-><init>(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;Lcom/xiaomi/accountsdk/futureservice/c;)V

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

    .line 52
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$1;->e()Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/xiaomi/accountsdk/guestaccount/data/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$1;->a:Lcom/xiaomi/accountsdk/guestaccount/data/f;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$1;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountService;

    invoke-interface {v1, v0}, Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountService;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;-><init>(Landroid/os/Bundle;)V

    return-object v1
.end method
