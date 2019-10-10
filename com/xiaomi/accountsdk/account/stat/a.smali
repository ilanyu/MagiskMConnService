.class public Lcom/xiaomi/accountsdk/account/stat/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:J

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 10
    iput-wide v0, p0, Lcom/xiaomi/accountsdk/account/stat/a;->b:J

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/stat/a;->c:Z

    if-eqz p1, :cond_2d

    const-string v1, "http://dummyurl/%s/_ver=%s&hdid=%s"

    const/4 v2, 0x3

    .line 17
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    new-instance p2, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;

    .line 20
    invoke-static {}, Lcom/xiaomi/accountsdk/account/h;->e()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;->d()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    .line 17
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/stat/a;->a:Ljava/lang/String;

    return-void

    .line 15
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "url can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/accountsdk/account/stat/a;->b:J

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 4

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/stat/a;->c:Z

    .line 39
    invoke-static {}, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->a()Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;

    move-result-object v0

    if-eqz p1, :cond_10

    if-eqz v0, :cond_10

    .line 41
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/stat/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_10
    return-void
.end method

.method public b()V
    .registers 7

    .line 28
    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/account/stat/a;->c:Z

    if-eqz v0, :cond_5

    return-void

    .line 31
    :cond_5
    invoke-static {}, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->a()Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 33
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/stat/a;->a:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/accountsdk/account/stat/a;->b:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->a(Ljava/lang/String;J)V

    :cond_17
    return-void
.end method
