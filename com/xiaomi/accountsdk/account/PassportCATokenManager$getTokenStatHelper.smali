.class Lcom/xiaomi/accountsdk/account/PassportCATokenManager$getTokenStatHelper;
.super Lcom/xiaomi/accountsdk/request/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/PassportCATokenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "getTokenStatHelper"
.end annotation


# instance fields
.field private a:J


# direct methods
.method constructor <init>()V
    .registers 3

    .line 189
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/h;-><init>()V

    const-wide/16 v0, 0x0

    .line 190
    iput-wide v0, p0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager$getTokenStatHelper;->a:J

    return-void
.end method


# virtual methods
.method a(Lcom/xiaomi/a/a/a;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    const-string p1, "http://dummyurl/getTokenDiagnosis?_ver=%s&_time=%s&_result=%s&hdid=%s"

    const/4 v0, 0x4

    .line 202
    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/accountsdk/account/c;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 p2, 0x2

    aput-object p3, v0, p2

    new-instance p2, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;

    .line 207
    invoke-static {}, Lcom/xiaomi/accountsdk/account/h;->e()Landroid/app/Application;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;->d()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v0, p3

    .line 202
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 3

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager$getTokenStatHelper;->a:J

    return-void
.end method

.method public a(Lcom/xiaomi/a/a/a;)V
    .registers 6

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager$getTokenStatHelper;->a:J

    sub-long/2addr v0, v2

    if-eqz p1, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    .line 197
    :goto_c
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager$getTokenStatHelper;->a(Lcom/xiaomi/a/a/a;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 198
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager$getTokenStatHelper;->d(Ljava/lang/String;)V

    return-void
.end method
