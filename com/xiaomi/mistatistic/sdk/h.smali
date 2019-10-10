.class public Lcom/xiaomi/mistatistic/sdk/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 4

    .line 19
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    .line 20
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 23
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 25
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p0, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 13

    .line 29
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    .line 30
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 33
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 34
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-static {v2, p0, v3, v4}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v5

    sub-long v7, v0, v5

    cmp-long v2, v5, v3

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-lez v2, :cond_48

    cmp-long v2, v7, v3

    if-gez v2, :cond_2a

    goto :goto_48

    .line 42
    :cond_2a
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, v3, v4}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    const-string v0, "web_view_page_loading_time"

    const-string v1, ""

    const-string v2, "web_view_page_loading time is:%d, url is:%s"

    .line 45
    new-array v3, v11, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v10

    aput-object p0, v3, v9

    invoke-static {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-static {v0, p0, v7, v8}, Lcom/xiaomi/mistatistic/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_48
    :goto_48
    const-string p0, ""

    const-string v2, "web_view_page_loading record time is invalid, record startTime is : %d,record end time is : %d"

    .line 38
    new-array v3, v11, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {p0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
