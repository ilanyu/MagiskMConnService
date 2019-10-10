.class Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$4;
.super Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$GuestAccountServiceConnector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$GuestAccountServiceConnector<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;Lcom/xiaomi/accountsdk/futureservice/c;)V
    .registers 3

    .line 101
    iput-object p1, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$4;->a:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;

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

    .line 101
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$4;->e()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected e()Ljava/lang/Void;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$4;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountService;

    invoke-interface {v0}, Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountService;->a()V

    const/4 v0, 0x0

    return-object v0
.end method
