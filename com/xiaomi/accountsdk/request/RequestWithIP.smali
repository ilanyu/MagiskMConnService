.class public Lcom/xiaomi/accountsdk/request/RequestWithIP;
.super Lcom/xiaomi/accountsdk/request/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "RequestWithIP"


# instance fields
.field private final b:Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

.field private final c:Lcom/xiaomi/accountsdk/request/IPStrategy;

.field private final d:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;Lcom/xiaomi/accountsdk/request/IPStrategy;Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;)V
    .registers 6

    .line 28
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/n;-><init>()V

    if-eqz p1, :cond_21

    if-eqz p2, :cond_21

    .line 33
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->b:Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    .line 34
    iput-object p2, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->c:Lcom/xiaomi/accountsdk/request/IPStrategy;

    .line 35
    new-instance p1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;

    const/4 p2, 0x2

    new-array p2, p2, [Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    const/4 v0, 0x0

    new-instance v1, Lcom/xiaomi/accountsdk/request/f;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/request/f;-><init>()V

    aput-object v1, p2, v0

    const/4 v0, 0x1

    aput-object p3, p2, v0

    invoke-direct {p1, p2}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;-><init>([Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;)V

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->d:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    return-void

    .line 30
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method static a(Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/p;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_b4

    if-eqz p1, :cond_b4

    if-eqz p2, :cond_b4

    if-nez p3, :cond_b

    goto/16 :goto_b4

    .line 169
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x1

    .line 173
    :try_start_14
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->b()Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    move-result-object p0

    .line 174
    iget-object v8, p0, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->b:Lcom/xiaomi/accountsdk/request/o;

    .line 177
    iget-object v9, v8, Lcom/xiaomi/accountsdk/request/o;->c:Lcom/xiaomi/accountsdk/utils/k;

    const-string v10, "host"

    invoke-virtual {v9, v10, p1}, Lcom/xiaomi/accountsdk/utils/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v9, v8, Lcom/xiaomi/accountsdk/request/o;->f:Ljava/lang/String;

    invoke-virtual {v9, p1, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/xiaomi/accountsdk/request/o;->f:Ljava/lang/String;

    .line 180
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->a()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    iput-object p0, p3, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;->a:Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    .line 181
    iget-object p0, p3, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;->a:Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    if-eqz p0, :cond_35

    const/4 p0, 0x1

    goto :goto_36

    :cond_35
    const/4 p0, 0x0

    .line 182
    :goto_36
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_3a} :catch_5f
    .catchall {:try_start_14 .. :try_end_3a} :catchall_5d

    .line 190
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v1

    iput-wide v9, p3, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;->b:J

    const-string v1, "RequestWithIP"

    const-string v2, "visit with ip, host=%s, ip=%s, time=%s, result=%s"

    .line 191
    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v0

    aput-object p2, v3, v7

    iget-wide p1, p3, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;->b:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v5

    aput-object v8, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/accountsdk/utils/d;->g(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :catchall_5d
    move-exception p0

    goto :goto_91

    :catch_5f
    move-exception p0

    :try_start_60
    const-string v8, "IOError,%s"

    .line 186
    new-array v9, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v9, v0

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_6e
    .catchall {:try_start_60 .. :try_end_6e} :catchall_5d

    .line 190
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v1

    iput-wide v8, p3, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;->b:J

    const-string v1, "RequestWithIP"

    const-string v2, "visit with ip, host=%s, ip=%s, time=%s, result=%s"

    .line 191
    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v0

    aput-object p2, v3, v7

    iget-wide p1, p3, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;->b:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v5

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/accountsdk/utils/d;->g(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 190
    :goto_91
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v1

    iput-wide v8, p3, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;->b:J

    .line 191
    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v0

    aput-object p2, v1, v7

    iget-wide p1, p3, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;->b:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v5

    aput-object v3, v1, v4

    const-string p1, "visit with ip, host=%s, ip=%s, time=%s, result=%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "RequestWithIP"

    invoke-static {p2, p1}, Lcom/xiaomi/accountsdk/utils/d;->g(Ljava/lang/String;Ljava/lang/String;)I

    throw p0

    :cond_b4
    :goto_b4
    return v0
.end method

.method private b()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Lcom/xiaomi/accountsdk/request/p;
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->b:Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->b:Lcom/xiaomi/accountsdk/request/o;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/request/o;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;-><init>()V

    .line 65
    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->d:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->a_()V

    .line 67
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 71
    :try_start_1e
    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->c:Lcom/xiaomi/accountsdk/request/IPStrategy;

    invoke-virtual {v3, v0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    iget-object v4, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->d:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v4, v3}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->a(Ljava/lang/String;)V

    .line 73
    iget-object v4, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->b:Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    invoke-static {v4, v0, v3, v1}, Lcom/xiaomi/accountsdk/request/RequestWithIP;->a(Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_41

    .line 74
    iget-object v4, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->c:Lcom/xiaomi/accountsdk/request/IPStrategy;

    iget-wide v7, v1, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;->b:J

    invoke-virtual {v4, v0, v3, v7, v8}, Lcom/xiaomi/accountsdk/request/IPStrategy;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 75
    iget-object v4, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->d:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v4}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->a()V

    const/4 v4, 0x1

    goto :goto_47

    .line 78
    :cond_41
    iget-object v4, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->d:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v4}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->b()V

    const/4 v4, 0x0

    .line 80
    :goto_47
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-nez v4, :cond_83

    .line 84
    iget-object v7, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->d:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v7}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->f()V

    .line 85
    iget-object v7, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->c:Lcom/xiaomi/accountsdk/request/IPStrategy;

    invoke-virtual {v7, v0, v3}, Lcom/xiaomi/accountsdk/request/IPStrategy;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    iget-object v7, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->d:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v7, v3}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->c(Ljava/lang/String;)V

    .line 87
    iget-object v7, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->d:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v7, v3}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->b(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7b

    iget-object v7, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->b:Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    invoke-static {v7, v0, v3, v1}, Lcom/xiaomi/accountsdk/request/RequestWithIP;->a(Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;)Z

    move-result v7

    if-eqz v7, :cond_7b

    .line 89
    iget-object v4, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->c:Lcom/xiaomi/accountsdk/request/IPStrategy;

    invoke-virtual {v4, v0, v3}, Lcom/xiaomi/accountsdk/request/IPStrategy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v4, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->d:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v4}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->c()V

    const/4 v4, 0x1

    goto :goto_80

    .line 93
    :cond_7b
    iget-object v7, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->d:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v7}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->d()V

    .line 95
    :goto_80
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_83
    if-nez v4, :cond_d8

    .line 100
    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->c:Lcom/xiaomi/accountsdk/request/IPStrategy;

    invoke-virtual {v3, v0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_d8

    .line 102
    :goto_8d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_d8

    .line 103
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 104
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a5

    .line 105
    iget-object v7, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->d:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v7, v5}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->b(I)V

    goto :goto_d5

    .line 108
    :cond_a5
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v8, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->b:Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    invoke-virtual {v8}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->b()Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    move-result-object v8

    .line 111
    iget-object v9, v8, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->b:Lcom/xiaomi/accountsdk/request/o;

    const/16 v10, 0x2710

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/xiaomi/accountsdk/request/o;->a(Ljava/lang/Integer;)V

    .line 112
    iget-object v9, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->d:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v9, v5, v7}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->a(ILjava/lang/String;)V

    .line 113
    invoke-static {v8, v0, v7, v1}, Lcom/xiaomi/accountsdk/request/RequestWithIP;->a(Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;)Z

    move-result v8

    if-eqz v8, :cond_d0

    .line 114
    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->c:Lcom/xiaomi/accountsdk/request/IPStrategy;

    invoke-virtual {v2, v0, v7}, Lcom/xiaomi/accountsdk/request/IPStrategy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->d:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v2, v5}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->a(I)V

    const/4 v4, 0x1

    goto :goto_d8

    .line 119
    :cond_d0
    iget-object v7, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->d:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v7, v5}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->b(I)V

    :goto_d5
    add-int/lit8 v5, v5, 0x1

    goto :goto_8d

    :cond_d8
    :goto_d8
    if-eqz v4, :cond_e0

    .line 130
    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->d:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->b_()V

    goto :goto_e5

    .line 132
    :cond_e0
    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->d:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->l()V

    :goto_e5
    if-eqz v4, :cond_ef

    .line 136
    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->c:Lcom/xiaomi/accountsdk/request/IPStrategy;

    invoke-virtual {v2, v0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->d(Ljava/lang/String;)V

    .line 137
    iget-object v1, v1, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;->a:Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    :try_end_ee
    .catch Lcom/xiaomi/accountsdk/request/p; {:try_start_1e .. :try_end_ee} :catch_f1

    return-object v1

    :cond_ef
    const/4 v0, 0x0

    return-object v0

    :catch_f1
    move-exception v1

    .line 143
    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->d:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->k()V

    .line 144
    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->c:Lcom/xiaomi/accountsdk/request/IPStrategy;

    invoke-virtual {v2, v0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->d(Ljava/lang/String;)V

    .line 146
    throw v1
.end method

.method private c()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/p;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->d:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->e()V

    const/4 v0, 0x1

    .line 154
    :try_start_6
    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->b:Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->a()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_14
    .catchall {:try_start_6 .. :try_end_c} :catchall_12

    .line 159
    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->d:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v2, v0}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->a(Z)V

    return-object v1

    :catchall_12
    move-exception v1

    goto :goto_1a

    :catch_14
    move-exception v0

    const/4 v1, 0x0

    .line 157
    :try_start_16
    throw v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    .line 159
    :goto_1a
    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->d:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v2, v0}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->a(Z)V

    throw v1
.end method


# virtual methods
.method public a()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/p;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->d:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->g()V

    .line 43
    :try_start_5
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->b:Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->c()Z

    move-result v0

    if-nez v0, :cond_19

    .line 44
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/RequestWithIP;->b()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_1e

    if-eqz v0, :cond_19

    .line 51
    :goto_13
    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->d:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->h()V

    return-object v0

    .line 49
    :cond_19
    :try_start_19
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/RequestWithIP;->c()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_1e

    goto :goto_13

    :catchall_1e
    move-exception v0

    .line 51
    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->d:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->h()V

    throw v0
.end method
