.class public Lcom/xiaomi/accountsdk/utils/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$IServerTimeComputer;


# static fields
.field private static final a:Ljava/lang/String; = "system_time_diff"

.field private static final b:Ljava/lang/String; = "accountsdk_servertime"

.field private static final c:Ljava/lang/String; = "AccountServerTimeCompu"

.field private static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile e:J

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/utils/e;->d:Ljava/util/Set;

    const/4 v0, 0x2

    .line 47
    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/accountsdk/account/g;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/accountsdk/account/g;->c:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    array-length v1, v0

    :goto_15
    if-ge v2, v1, :cond_2e

    aget-object v3, v0, v2

    .line 49
    :try_start_19
    sget-object v4, Lcom/xiaomi/accountsdk/utils/e;->d:Ljava/util/Set;

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/net/MalformedURLException; {:try_start_19 .. :try_end_2b} :catch_2b

    :catch_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_2e
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 56
    iput-wide v0, p0, Lcom/xiaomi/accountsdk/utils/e;->e:J

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/utils/e;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_18

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/utils/e;->g:Landroid/content/Context;

    return-void

    .line 63
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static a(Ljava/lang/String;)Z
    .registers 2

    .line 118
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 119
    sget-object v0, Lcom/xiaomi/accountsdk/utils/e;->d:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_13
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_13} :catch_14

    return p0

    :catch_14
    move-exception p0

    const-string v0, "AccountServerTimeCompu"

    .line 121
    invoke-static {v0, p0}, Lcom/xiaomi/accountsdk/utils/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a()J
    .registers 5

    .line 70
    iget-object v0, p0, Lcom/xiaomi/accountsdk/utils/e;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/accountsdk/utils/e;->e:J

    add-long/2addr v0, v2

    return-wide v0

    .line 73
    :cond_10
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/e;->b()J

    move-result-wide v0

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method a(J)V
    .registers 5

    .line 143
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/e;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "system_time_diff"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 96
    iget-object v0, p0, Lcom/xiaomi/accountsdk/utils/e;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 101
    :cond_9
    invoke-static {p1}, Lcom/xiaomi/accountsdk/utils/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    return-void

    .line 107
    :cond_10
    :try_start_10
    invoke-static {p2}, Lcom/xiaomi/accountsdk/utils/DateUtils;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_14
    .catch Ljava/text/ParseException; {:try_start_10 .. :try_end_14} :catch_18

    .line 113
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/utils/e;->a(Ljava/util/Date;)V

    return-void

    :catch_18
    move-exception p1

    const-string p2, "AccountServerTimeCompu"

    .line 109
    invoke-static {p2, p1}, Lcom/xiaomi/accountsdk/utils/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 3

    if-eqz p1, :cond_15

    .line 84
    iget-object v0, p0, Lcom/xiaomi/accountsdk/utils/e;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 89
    :cond_b
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/utils/e;->b(Ljava/util/Date;)V

    .line 91
    iget-object p1, p0, Lcom/xiaomi/accountsdk/utils/e;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 81
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "serverDate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Z)V
    .registers 3

    .line 159
    iget-object v0, p0, Lcom/xiaomi/accountsdk/utils/e;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method b()J
    .registers 5

    .line 138
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/e;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "system_time_diff"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method b(J)V
    .registers 3

    .line 151
    iput-wide p1, p0, Lcom/xiaomi/accountsdk/utils/e;->e:J

    return-void
.end method

.method b(Ljava/util/Date;)V
    .registers 6

    .line 127
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 129
    iput-wide v2, p0, Lcom/xiaomi/accountsdk/utils/e;->e:J

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->a(J)V

    .line 132
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->b()V

    .line 134
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/x;->a()Lcom/xiaomi/accountsdk/utils/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/utils/x;->a(Ljava/util/Date;)V

    return-void
.end method

.method c()Landroid/content/SharedPreferences;
    .registers 4

    .line 147
    iget-object v0, p0, Lcom/xiaomi/accountsdk/utils/e;->g:Landroid/content/Context;

    const-string v1, "accountsdk_servertime"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method d()J
    .registers 3

    .line 155
    iget-wide v0, p0, Lcom/xiaomi/accountsdk/utils/e;->e:J

    return-wide v0
.end method
