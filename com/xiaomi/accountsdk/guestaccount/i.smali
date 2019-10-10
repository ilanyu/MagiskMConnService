.class Lcom/xiaomi/accountsdk/guestaccount/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;
    .registers 3

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/accountsdk/guestaccount/i;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object p1

    return-object p1
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;
    .registers 3

    .line 14
    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/c;->a(Landroid/content/Context;)Lcom/xiaomi/accountsdk/guestaccount/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaomi/accountsdk/guestaccount/c;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object p1

    return-object p1
.end method

.method a(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)V
    .registers 3

    .line 18
    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/c;->a(Landroid/content/Context;)Lcom/xiaomi/accountsdk/guestaccount/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaomi/accountsdk/guestaccount/c;->a(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)V

    return-void
.end method

.method b(Landroid/content/Context;)V
    .registers 2

    .line 26
    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/c;->a(Landroid/content/Context;)Lcom/xiaomi/accountsdk/guestaccount/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/guestaccount/c;->a()V

    return-void
.end method

.method b(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)V
    .registers 3

    .line 22
    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/c;->a(Landroid/content/Context;)Lcom/xiaomi/accountsdk/guestaccount/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaomi/accountsdk/guestaccount/c;->b(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)V

    return-void
.end method

.method b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 30
    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/c;->a(Landroid/content/Context;)Lcom/xiaomi/accountsdk/guestaccount/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaomi/accountsdk/guestaccount/c;->b(Ljava/lang/String;)V

    return-void
.end method
