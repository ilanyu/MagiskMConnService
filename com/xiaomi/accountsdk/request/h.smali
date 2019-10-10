.class public Lcom/xiaomi/accountsdk/request/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 13
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/h;->m()Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .registers 5

    .line 18
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/z;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 21
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/h;->m()Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->a(Ljava/lang/String;J)V

    return-void
.end method

.method protected m()Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;
    .registers 2

    .line 9
    invoke-static {}, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->a()Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;

    move-result-object v0

    return-object v0
.end method

.method protected n()Ljava/lang/String;
    .registers 2

    .line 25
    invoke-static {}, Lcom/xiaomi/accountsdk/account/h;->e()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/request/l;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
