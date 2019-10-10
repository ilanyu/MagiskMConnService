.class Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/request/CALoginStatHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Info"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/Long;

.field c:Ljava/lang/Long;

.field d:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->a:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->b:Ljava/lang/Long;

    .line 17
    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->c:Ljava/lang/Long;

    .line 18
    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->d:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->d:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_13

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "1"

    goto :goto_13

    :cond_11
    const-string v0, "0"

    :goto_13
    return-object v0
.end method

.method a(Ljava/lang/Long;)Ljava/lang/String;
    .registers 10

    if-nez p1, :cond_8

    const-wide/16 v0, 0x0

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 25
    :cond_8
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->b:Ljava/lang/Long;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->c:Ljava/lang/Long;

    if-eqz v0, :cond_3e

    const-string v0, "%d_%d"

    const/4 v3, 0x2

    .line 26
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->b:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 27
    :cond_3e
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->b:Ljava/lang/Long;

    if-eqz v0, :cond_5c

    const-string v0, "%d_"

    .line 28
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->b:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 29
    :cond_5c
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->c:Ljava/lang/Long;

    if-eqz v0, :cond_7a

    const-string v0, "_%d"

    .line 30
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->c:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7a
    const/4 p1, 0x0

    return-object p1
.end method

.method a(Ljava/lang/String;)V
    .registers 4

    .line 41
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->a:Ljava/lang/String;

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->b:Ljava/lang/Long;

    return-void
.end method

.method a(Z)V
    .registers 4

    .line 46
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->d:Ljava/lang/Boolean;

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->c:Ljava/lang/Long;

    return-void
.end method
