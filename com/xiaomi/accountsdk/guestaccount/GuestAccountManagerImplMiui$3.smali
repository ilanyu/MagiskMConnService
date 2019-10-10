.class Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$3;
.super Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$GuestAccountServiceConnector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;->b(Lcom/xiaomi/accountsdk/guestaccount/data/f;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)Lcom/xiaomi/accountsdk/guestaccount/data/b;
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

.field final synthetic b:Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;

.field final synthetic c:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;Lcom/xiaomi/accountsdk/futureservice/c;Lcom/xiaomi/accountsdk/guestaccount/data/f;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)V
    .registers 5

    .line 85
    iput-object p1, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$3;->c:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;

    iput-object p3, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$3;->a:Lcom/xiaomi/accountsdk/guestaccount/data/f;

    iput-object p4, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$3;->b:Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;

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

    .line 85
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$3;->e()Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/xiaomi/accountsdk/guestaccount/data/c;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$3;->a:Lcom/xiaomi/accountsdk/guestaccount/data/f;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$3;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountService;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$3;->b:Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;

    .line 91
    invoke-interface {v1, v0, v2}, Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountService;->b(Landroid/os/Bundle;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)Landroid/os/Bundle;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;-><init>(Landroid/os/Bundle;)V

    return-object v1
.end method
