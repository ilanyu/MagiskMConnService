.class abstract Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$GuestAccountServiceConnector;
.super Lcom/xiaomi/accountsdk/futureservice/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "GuestAccountServiceConnector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/accountsdk/futureservice/b<",
        "Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountService;",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;Lcom/xiaomi/accountsdk/futureservice/c;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/futureservice/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$GuestAccountServiceConnector;->d:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;

    .line 132
    iget-object p1, p1, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;->a:Landroid/content/Context;

    const-string v0, "com.xiaomi.account.action.BIND_GUEST_ACCOUNT_SERVICE"

    const-string v1, "com.xiaomi.account"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/xiaomi/accountsdk/futureservice/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2

    .line 128
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$GuestAccountServiceConnector;->b(Landroid/os/IBinder;)Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountService;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/os/IBinder;)Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountService;
    .registers 2

    .line 139
    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountService$Stub;->a(Landroid/os/IBinder;)Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountService;

    move-result-object p1

    return-object p1
.end method
