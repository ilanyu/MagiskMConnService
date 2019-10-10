.class Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$1;
.super Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$OnlineRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->a(ZLcom/xiaomi/accountsdk/guestaccount/data/f;)Lcom/xiaomi/accountsdk/guestaccount/data/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

.field final synthetic b:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)V
    .registers 3

    .line 112
    iput-object p1, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$1;->b:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$1;->a:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$OnlineRunnable;-><init>(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/xiaomi/accountsdk/guestaccount/data/c;
    .registers 4

    .line 115
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$1;->b:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->a(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;)Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$1;->a:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->a(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->d()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 120
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$1;->a:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    iget-object v2, v2, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->j:Lcom/xiaomi/accountsdk/guestaccount/data/e;

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->a(Lcom/xiaomi/accountsdk/guestaccount/data/e;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->a(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    :cond_1e
    return-object v0
.end method
