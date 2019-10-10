.class public Lcom/xiaomi/mistatistic/sdk/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/net/Socket;Ljava/net/SocketAddress;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 14
    invoke-virtual {p0, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 15
    new-instance p0, Lcom/xiaomi/mistatistic/sdk/data/b;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    sub-long/2addr v3, v0

    invoke-direct {p0, v2, v3, v4}, Lcom/xiaomi/mistatistic/sdk/data/b;-><init>(Ljava/lang/String;J)V

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/b;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception p0

    .line 17
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/b;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/xiaomi/mistatistic/sdk/data/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/b;)V

    .line 18
    throw p0
.end method

.method public static a(Ljava/net/Socket;Ljava/net/SocketAddress;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 26
    invoke-virtual {p0, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 27
    new-instance p0, Lcom/xiaomi/mistatistic/sdk/data/b;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    sub-long/2addr v2, v0

    invoke-direct {p0, p2, v2, v3}, Lcom/xiaomi/mistatistic/sdk/data/b;-><init>(Ljava/lang/String;J)V

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/b;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception p0

    .line 29
    new-instance p2, Lcom/xiaomi/mistatistic/sdk/data/b;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/xiaomi/mistatistic/sdk/data/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/b;)V

    .line 30
    throw p0
.end method
