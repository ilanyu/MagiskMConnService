.class public Lcom/xiaomi/micloudsdk/utils/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/a/e;
        }
    .end annotation

    .line 19
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/request/utils/e;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/a/e;
        }
    .end annotation

    .line 23
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/request/utils/e;->a(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/a/e;
        }
    .end annotation

    .line 31
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/request/utils/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/a/e;
        }
    .end annotation

    .line 27
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/request/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/Integer;)Z
    .registers 1

    .line 38
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/e;->a(I)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/Long;)Z
    .registers 3

    .line 42
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xiaomi/micloudsdk/request/utils/e;->a(J)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 1

    .line 46
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/e;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
