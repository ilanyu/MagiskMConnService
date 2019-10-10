.class public Lcom/xiaomi/accountsdk/request/IPStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;,
        Lcom/xiaomi/accountsdk/request/IPStrategy$BackupIpStatHelper;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "IPStrategy"

.field private static b:Lcom/xiaomi/accountsdk/request/IPInfos;

.field private static c:Lcom/xiaomi/accountsdk/request/IPInfos;

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static e:Lcom/xiaomi/accountsdk/request/j;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 27
    new-instance v0, Lcom/xiaomi/accountsdk/request/IPInfos;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/IPInfos;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->b:Lcom/xiaomi/accountsdk/request/IPInfos;

    .line 28
    new-instance v0, Lcom/xiaomi/accountsdk/request/IPInfos;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/IPInfos;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->c:Lcom/xiaomi/accountsdk/request/IPInfos;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->d:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "183.84.5.8"

    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "111.13.142.141"

    .line 35
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v1, Lcom/xiaomi/accountsdk/request/IPStrategy;->d:Ljava/util/Map;

    const-string v2, "c.id.mi.com"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/xiaomi/accountsdk/request/j;)V
    .registers 1

    .line 41
    sput-object p0, Lcom/xiaomi/accountsdk/request/IPStrategy;->e:Lcom/xiaomi/accountsdk/request/j;

    return-void
.end method

.method static d()V
    .registers 1

    .line 436
    new-instance v0, Lcom/xiaomi/accountsdk/request/IPInfos;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/IPInfos;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->b:Lcom/xiaomi/accountsdk/request/IPInfos;

    .line 437
    new-instance v0, Lcom/xiaomi/accountsdk/request/IPInfos;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/IPInfos;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->c:Lcom/xiaomi/accountsdk/request/IPInfos;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;[Ljava/lang/String;Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;)Landroid/util/Pair;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 360
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide v3, 0x7fffffffffffffffL

    move-wide v5, v3

    const/4 v3, 0x0

    move-object v4, v2

    :goto_b
    if-ge v3, v0, :cond_49

    aget-object v7, p2, v3

    .line 362
    :try_start_f
    new-instance v8, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;

    invoke-direct {v8}, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;-><init>()V

    .line 364
    new-instance v9, Lcom/xiaomi/accountsdk/request/o;

    invoke-direct {v9}, Lcom/xiaomi/accountsdk/request/o;-><init>()V

    const-string v10, "http://%s/conn/echo"

    const/4 v11, 0x1

    .line 365
    new-array v11, v11, [Ljava/lang/Object;

    aput-object p1, v11, v1

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/xiaomi/accountsdk/request/o;->a(Ljava/lang/String;)V

    .line 366
    new-instance v10, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;

    invoke-direct {v10, v9}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;-><init>(Lcom/xiaomi/accountsdk/request/o;)V

    .line 367
    invoke-static {v10, p1, v7, v8}, Lcom/xiaomi/accountsdk/request/RequestWithIP;->a(Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;)Z

    move-result v9

    .line 368
    iget-wide v10, v8, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;->b:J

    invoke-virtual {p3, v7, v9, v10, v11}, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->a(Ljava/lang/String;ZJ)V

    if-eqz v9, :cond_46

    .line 369
    iget-wide v9, v8, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;->b:J
    :try_end_39
    .catch Lcom/xiaomi/accountsdk/request/p; {:try_start_f .. :try_end_39} :catch_43

    cmp-long v9, v9, v5

    if-gez v9, :cond_46

    .line 371
    :try_start_3d
    iget-wide v8, v8, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;->b:J
    :try_end_3f
    .catch Lcom/xiaomi/accountsdk/request/p; {:try_start_3d .. :try_end_3f} :catch_42

    move-object v4, v7

    move-wide v5, v8

    goto :goto_46

    :catch_42
    move-object v4, v7

    .line 374
    :catch_43
    invoke-virtual {p3, v7}, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->e(Ljava/lang/String;)V

    :cond_46
    :goto_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_49
    if-nez v4, :cond_4c

    goto :goto_54

    .line 379
    :cond_4c
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    :goto_54
    return-object v2
.end method

.method protected a()Ljava/lang/Boolean;
    .registers 2

    .line 266
    sget-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->e:Lcom/xiaomi/accountsdk/request/j;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 269
    :cond_6
    sget-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->e:Lcom/xiaomi/accountsdk/request/j;

    invoke-interface {v0}, Lcom/xiaomi/accountsdk/request/j;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 45
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->c()Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v1, Lcom/xiaomi/accountsdk/request/IPInfos$Index;

    invoke-direct {v1, p1, v0}, Lcom/xiaomi/accountsdk/request/IPInfos$Index;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    sget-object v2, Lcom/xiaomi/accountsdk/request/IPStrategy;->c:Lcom/xiaomi/accountsdk/request/IPInfos;

    invoke-virtual {v2, v1}, Lcom/xiaomi/accountsdk/request/IPInfos;->b(Lcom/xiaomi/accountsdk/request/IPInfos$Index;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_23

    .line 52
    sget-object v3, Lcom/xiaomi/accountsdk/request/IPStrategy;->e:Lcom/xiaomi/accountsdk/request/j;

    if-eqz v3, :cond_23

    .line 53
    sget-object v2, Lcom/xiaomi/accountsdk/request/IPStrategy;->e:Lcom/xiaomi/accountsdk/request/j;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v0, v3}, Lcom/xiaomi/accountsdk/request/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 55
    sget-object p1, Lcom/xiaomi/accountsdk/request/IPStrategy;->c:Lcom/xiaomi/accountsdk/request/IPInfos;

    invoke-virtual {p1, v1, v2}, Lcom/xiaomi/accountsdk/request/IPInfos;->a(Lcom/xiaomi/accountsdk/request/IPInfos$Index;Ljava/lang/String;)V

    :cond_23
    return-object v2
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    .line 87
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/IPStrategy;->c(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    if-nez p1, :cond_8

    return-object v0

    .line 92
    :cond_8
    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_18

    aget-object v1, p1, v3

    if-eqz v1, :cond_18

    .line 93
    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 96
    :cond_18
    array-length v1, p1

    :goto_19
    if-ge v3, v1, :cond_2e

    aget-object v2, p1, v3

    if-nez v2, :cond_20

    goto :goto_2b

    .line 100
    :cond_20
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_28
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_28} :catch_2e

    if-nez v4, :cond_2b

    return-object v2

    :cond_2b
    :goto_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :catch_2e
    :cond_2e
    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 15

    .line 117
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/IPStrategy;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 121
    :cond_7
    new-instance v6, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;

    invoke-direct {v6}, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;-><init>()V

    const/4 v0, 0x1

    .line 122
    invoke-virtual {v6, p2, v0, p3, p4}, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->a(Ljava/lang/String;ZJ)V

    .line 123
    invoke-virtual {v6, p2}, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->a(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/xiaomi/accountsdk/request/i;->c()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_26

    .line 127
    invoke-static {}, Lcom/xiaomi/accountsdk/request/i;->c()J

    move-result-wide v0

    invoke-virtual {v6, p3, p4, v0, v1}, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->a(JJ)V

    .line 128
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/IPStrategy;->f(Ljava/lang/String;)V

    return-void

    .line 132
    :cond_26
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/accountsdk/request/IPStrategy;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 133
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/IPStrategy;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 135
    invoke-virtual {v6, v4}, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->b(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v6, v5}, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->c(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->c()Ljava/lang/String;

    move-result-object v7

    .line 139
    new-instance p2, Lcom/xiaomi/accountsdk/request/IPStrategy$1;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move-wide v8, p3

    invoke-direct/range {v1 .. v9}, Lcom/xiaomi/accountsdk/request/IPStrategy$1;-><init>(Lcom/xiaomi/accountsdk/request/IPStrategy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;Ljava/lang/String;J)V

    invoke-static {p2}, Lcom/xiaomi/accountsdk/request/g;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 395
    new-instance v0, Lcom/xiaomi/accountsdk/request/IPInfos$Index;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/accountsdk/request/IPInfos$Index;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    sget-object v1, Lcom/xiaomi/accountsdk/request/IPStrategy;->c:Lcom/xiaomi/accountsdk/request/IPInfos;

    invoke-virtual {v1, v0, p3}, Lcom/xiaomi/accountsdk/request/IPInfos;->a(Lcom/xiaomi/accountsdk/request/IPInfos$Index;Ljava/lang/String;)V

    .line 398
    sget-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->e:Lcom/xiaomi/accountsdk/request/j;

    if-eqz v0, :cond_13

    .line 399
    sget-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->e:Lcom/xiaomi/accountsdk/request/j;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/accountsdk/request/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 404
    new-instance v0, Lcom/xiaomi/accountsdk/request/IPInfos$Index;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/accountsdk/request/IPInfos$Index;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    sget-object v1, Lcom/xiaomi/accountsdk/request/IPStrategy;->b:Lcom/xiaomi/accountsdk/request/IPInfos;

    invoke-virtual {v1, v0, p3}, Lcom/xiaomi/accountsdk/request/IPInfos;->a(Lcom/xiaomi/accountsdk/request/IPInfos$Index;Ljava/util/List;)V

    .line 407
    sget-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->e:Lcom/xiaomi/accountsdk/request/j;

    if-eqz v0, :cond_13

    .line 408
    sget-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->e:Lcom/xiaomi/accountsdk/request/j;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/accountsdk/request/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_13
    return-void
.end method

.method a(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaomi/accountsdk/request/IPStrategy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 215
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/IPStrategy;->g(Ljava/lang/String;)V

    return-void
.end method

.method a(JJ)Z
    .registers 7

    .line 423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long p1, p1, p3

    if-lez p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method

.method protected a(Lcom/xiaomi/accountsdk/request/IPInfos;Ljava/lang/String;J)Z
    .registers 7

    .line 413
    new-instance v0, Lcom/xiaomi/accountsdk/request/IPInfos$Index;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/xiaomi/accountsdk/request/IPInfos$Index;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/request/IPInfos;->c(Lcom/xiaomi/accountsdk/request/IPInfos$Index;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_11

    const/4 p1, 0x1

    return p1

    .line 418
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaomi/accountsdk/request/IPStrategy;->a(JJ)Z

    move-result p1

    return p1
.end method

.method b(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->c()Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/xiaomi/accountsdk/request/IPInfos$Index;

    invoke-direct {v1, p1, v0}, Lcom/xiaomi/accountsdk/request/IPInfos$Index;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object v2, Lcom/xiaomi/accountsdk/request/IPStrategy;->b:Lcom/xiaomi/accountsdk/request/IPInfos;

    invoke-virtual {v2, v1}, Lcom/xiaomi/accountsdk/request/IPInfos;->a(Lcom/xiaomi/accountsdk/request/IPInfos$Index;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_23

    .line 70
    sget-object v3, Lcom/xiaomi/accountsdk/request/IPStrategy;->e:Lcom/xiaomi/accountsdk/request/j;

    if-eqz v3, :cond_23

    .line 71
    sget-object v2, Lcom/xiaomi/accountsdk/request/IPStrategy;->e:Lcom/xiaomi/accountsdk/request/j;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v0, v3}, Lcom/xiaomi/accountsdk/request/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 73
    sget-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->b:Lcom/xiaomi/accountsdk/request/IPInfos;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/request/IPInfos;->a(Lcom/xiaomi/accountsdk/request/IPInfos$Index;Ljava/util/List;)V

    :cond_23
    if-nez v2, :cond_2e

    .line 79
    sget-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    :cond_2e
    return-object v2
.end method

.method protected b()V
    .registers 12

    .line 273
    invoke-static {}, Lcom/xiaomi/accountsdk/request/i;->a()J

    move-result-wide v0

    .line 274
    invoke-static {}, Lcom/xiaomi/accountsdk/request/i;->b()J

    move-result-wide v2

    .line 275
    invoke-static {}, Lcom/xiaomi/accountsdk/request/i;->c()J

    move-result-wide v4

    .line 276
    invoke-static {}, Lcom/xiaomi/accountsdk/request/i;->d()J

    move-result-wide v6

    .line 278
    new-instance v8, Lcom/xiaomi/accountsdk/request/o;

    invoke-direct {v8}, Lcom/xiaomi/accountsdk/request/o;-><init>()V

    const-string v9, "http://c.id.mi.com/conn/getParams"

    .line 279
    invoke-virtual {v8, v9}, Lcom/xiaomi/accountsdk/request/o;->a(Ljava/lang/String;)V

    .line 280
    new-instance v9, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;

    invoke-direct {v9, v8}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;-><init>(Lcom/xiaomi/accountsdk/request/o;)V

    .line 282
    :try_start_1f
    invoke-virtual {v9}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->a()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v8

    .line 283
    invoke-virtual {v8}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->d()Ljava/lang/String;

    move-result-object v8

    .line 284
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2e

    return-void

    :cond_2e
    const-string v9, "&&&START&&&"

    .line 287
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_40

    const-string v9, "&&&START&&&"

    .line 288
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 290
    :cond_40
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "connectivity_params"

    .line 291
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "backup_ip_expire"

    const/4 v10, -0x1

    .line 292
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v10, :cond_57

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v2, v9

    :cond_57
    const-string v9, "cached_ip_expire"

    .line 296
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v10, :cond_62

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v0, v9

    :cond_62
    const-string v9, "ping_threshold"

    .line 300
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v10, :cond_6b

    int-to-long v4, v9

    :cond_6b
    const-string v9, "ping_time_coefficient"

    .line 304
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_71} :catch_af
    .catch Lcom/xiaomi/accountsdk/request/p; {:try_start_1f .. :try_end_71} :catch_a2
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_71} :catch_99

    if-eq v8, v10, :cond_74

    int-to-long v6, v8

    .line 318
    :cond_74
    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/request/i;->a(J)V

    .line 319
    invoke-static {v2, v3}, Lcom/xiaomi/accountsdk/request/i;->b(J)V

    .line 320
    invoke-static {v4, v5}, Lcom/xiaomi/accountsdk/request/i;->c(J)V

    .line 321
    invoke-static {v6, v7}, Lcom/xiaomi/accountsdk/request/i;->d(J)V

    .line 323
    sget-object v8, Lcom/xiaomi/accountsdk/request/IPStrategy;->e:Lcom/xiaomi/accountsdk/request/j;

    if-eqz v8, :cond_98

    .line 324
    sget-object v8, Lcom/xiaomi/accountsdk/request/IPStrategy;->e:Lcom/xiaomi/accountsdk/request/j;

    invoke-interface {v8, v0, v1}, Lcom/xiaomi/accountsdk/request/j;->a(J)V

    .line 325
    sget-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->e:Lcom/xiaomi/accountsdk/request/j;

    invoke-interface {v0, v2, v3}, Lcom/xiaomi/accountsdk/request/j;->c(J)V

    .line 326
    sget-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->e:Lcom/xiaomi/accountsdk/request/j;

    invoke-interface {v0, v4, v5}, Lcom/xiaomi/accountsdk/request/j;->e(J)V

    .line 327
    sget-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->e:Lcom/xiaomi/accountsdk/request/j;

    invoke-interface {v0, v6, v7}, Lcom/xiaomi/accountsdk/request/j;->g(J)V

    :cond_98
    return-void

    :catch_99
    move-exception v0

    const-string v1, "IPStrategy"

    const-string v2, "updateStrategyConfigOnline"

    .line 315
    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_a2
    move-exception v0

    const-string v1, "IPStrategy"

    const-string v2, "updateStrategyConfigOnline"

    .line 312
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/p;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_af
    move-exception v0

    const-string v1, "IPStrategy"

    const-string v2, "updateStrategyConfigOnline"

    .line 309
    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 209
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaomi/accountsdk/request/IPStrategy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/IPStrategy;->f(Ljava/lang/String;)V

    return-void
.end method

.method protected c()Ljava/lang/String;
    .registers 2

    .line 388
    sget-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->e:Lcom/xiaomi/accountsdk/request/j;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 391
    :cond_6
    sget-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->e:Lcom/xiaomi/accountsdk/request/j;

    invoke-interface {v0}, Lcom/xiaomi/accountsdk/request/j;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c(Ljava/lang/String;)[Ljava/net/InetAddress;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 113
    invoke-static {p1}, Ljava/net/Inet4Address;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    return-object p1
.end method

.method d(Ljava/lang/String;)V
    .registers 4

    .line 172
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/IPStrategy;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 176
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->c()Ljava/lang/String;

    move-result-object v0

    .line 177
    new-instance v1, Lcom/xiaomi/accountsdk/request/IPStrategy$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/xiaomi/accountsdk/request/IPStrategy$2;-><init>(Lcom/xiaomi/accountsdk/request/IPStrategy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaomi/accountsdk/request/g;->a(Ljava/lang/Runnable;)V

    .line 193
    new-instance p1, Lcom/xiaomi/accountsdk/request/IPStrategy$3;

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/accountsdk/request/IPStrategy$3;-><init>(Lcom/xiaomi/accountsdk/request/IPStrategy;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaomi/accountsdk/request/g;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected e(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 219
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->a()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 225
    :cond_8
    new-instance v2, Lcom/xiaomi/accountsdk/request/o;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/request/o;-><init>()V

    const-string v3, "http://resolver.msg.xiaomi.net/gslb/?ver=3.0&list=%s"

    const/4 v4, 0x1

    .line 226
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/accountsdk/request/o;->a(Ljava/lang/String;)V

    .line 227
    new-instance v3, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;

    invoke-direct {v3, v2}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;-><init>(Lcom/xiaomi/accountsdk/request/o;)V

    .line 229
    :try_start_21
    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->a()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v2

    .line 230
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "R"

    .line 231
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 233
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "wifi"

    .line 234
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_47

    :cond_41
    const-string v0, "wap"

    .line 236
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_47
    if-nez v0, :cond_4a

    return-object v1

    .line 241
    :cond_4a
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_51

    return-object v1

    .line 245
    :cond_51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 246
    :goto_56
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v5, v2, :cond_6c

    .line 247
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_69

    .line 249
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_69} :catch_87
    .catch Lcom/xiaomi/accountsdk/request/p; {:try_start_21 .. :try_end_69} :catch_7a
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_69} :catch_6d

    :cond_69
    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    :cond_6c
    return-object v0

    :catch_6d
    move-exception p1

    const-string v0, "IPStrategy"

    const-string v2, "getBackupIpListOnline error, cause : "

    .line 260
    invoke-virtual {p1}, Lorg/json/JSONException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_7a
    move-exception p1

    const-string v0, "IPStrategy"

    const-string v2, "getBackupIpListOnline error, cause : "

    .line 257
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/p;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_87
    move-exception p1

    const-string v0, "IPStrategy"

    const-string v2, "getBackupIpListOnline"

    .line 254
    invoke-static {v0, v2, p1}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method protected f(Ljava/lang/String;)V
    .registers 7

    .line 332
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->c()Ljava/lang/String;

    move-result-object v0

    .line 333
    new-instance v1, Lcom/xiaomi/accountsdk/request/IPInfos$Index;

    invoke-direct {v1, p1, v0}, Lcom/xiaomi/accountsdk/request/IPInfos$Index;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 336
    sget-object v4, Lcom/xiaomi/accountsdk/request/IPStrategy;->c:Lcom/xiaomi/accountsdk/request/IPInfos;

    invoke-virtual {v4, v1, v2, v3}, Lcom/xiaomi/accountsdk/request/IPInfos;->a(Lcom/xiaomi/accountsdk/request/IPInfos$Index;J)V

    .line 338
    sget-object v1, Lcom/xiaomi/accountsdk/request/IPStrategy;->e:Lcom/xiaomi/accountsdk/request/j;

    if-eqz v1, :cond_1b

    .line 339
    sget-object v1, Lcom/xiaomi/accountsdk/request/IPStrategy;->e:Lcom/xiaomi/accountsdk/request/j;

    invoke-interface {v1, p1, v0, v2, v3}, Lcom/xiaomi/accountsdk/request/j;->a(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1b
    return-void
.end method

.method protected g(Ljava/lang/String;)V
    .registers 7

    .line 344
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->c()Ljava/lang/String;

    move-result-object v0

    .line 345
    new-instance v1, Lcom/xiaomi/accountsdk/request/IPInfos$Index;

    invoke-direct {v1, p1, v0}, Lcom/xiaomi/accountsdk/request/IPInfos$Index;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 348
    sget-object v4, Lcom/xiaomi/accountsdk/request/IPStrategy;->b:Lcom/xiaomi/accountsdk/request/IPInfos;

    invoke-virtual {v4, v1, v2, v3}, Lcom/xiaomi/accountsdk/request/IPInfos;->a(Lcom/xiaomi/accountsdk/request/IPInfos$Index;J)V

    .line 350
    sget-object v1, Lcom/xiaomi/accountsdk/request/IPStrategy;->e:Lcom/xiaomi/accountsdk/request/j;

    if-eqz v1, :cond_1b

    .line 351
    sget-object v1, Lcom/xiaomi/accountsdk/request/IPStrategy;->e:Lcom/xiaomi/accountsdk/request/j;

    invoke-interface {v1, p1, v0, v2, v3}, Lcom/xiaomi/accountsdk/request/j;->c(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1b
    return-void
.end method

.method protected h(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 383
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/IPStrategy;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 384
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return-object p1
.end method

.method protected i(Ljava/lang/String;)Z
    .registers 5

    .line 427
    sget-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->c:Lcom/xiaomi/accountsdk/request/IPInfos;

    invoke-static {}, Lcom/xiaomi/accountsdk/request/i;->a()J

    move-result-wide v1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/xiaomi/accountsdk/request/IPStrategy;->a(Lcom/xiaomi/accountsdk/request/IPInfos;Ljava/lang/String;J)Z

    move-result p1

    return p1
.end method

.method protected j(Ljava/lang/String;)Z
    .registers 5

    .line 431
    sget-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->b:Lcom/xiaomi/accountsdk/request/IPInfos;

    invoke-static {}, Lcom/xiaomi/accountsdk/request/i;->b()J

    move-result-wide v1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/xiaomi/accountsdk/request/IPStrategy;->a(Lcom/xiaomi/accountsdk/request/IPInfos;Ljava/lang/String;J)Z

    move-result p1

    return p1
.end method
