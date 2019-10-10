.class public Lcom/xiaomi/mistatistic/sdk/controller/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/xiaomi/mistatistic/sdk/controller/q;


# instance fields
.field private b:Z

.field private c:I

.field private d:J

.field private e:J

.field private f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->b:Z

    const/4 v0, 0x3

    .line 28
    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->c:I

    .line 42
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/p$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/p$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/q;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/q;)I
    .registers 1

    .line 16
    iget p0, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->c:I

    return p0
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/q;I)I
    .registers 2

    .line 16
    iput p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->c:I

    return p1
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/q;J)J
    .registers 3

    .line 16
    iput-wide p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->d:J

    return-wide p1
.end method

.method public static declared-synchronized a()Lcom/xiaomi/mistatistic/sdk/controller/q;
    .registers 2

    const-class v0, Lcom/xiaomi/mistatistic/sdk/controller/q;

    monitor-enter v0

    .line 35
    :try_start_3
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/q;->a:Lcom/xiaomi/mistatistic/sdk/controller/q;

    if-nez v1, :cond_e

    .line 36
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/q;

    invoke-direct {v1}, Lcom/xiaomi/mistatistic/sdk/controller/q;-><init>()V

    sput-object v1, Lcom/xiaomi/mistatistic/sdk/controller/q;->a:Lcom/xiaomi/mistatistic/sdk/controller/q;

    .line 38
    :cond_e
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/q;->a:Lcom/xiaomi/mistatistic/sdk/controller/q;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    .line 34
    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/q;Z)Z
    .registers 2

    .line 16
    iput-boolean p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaomi/mistatistic/sdk/controller/q;)J
    .registers 3

    .line 16
    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->d:J

    return-wide v0
.end method


# virtual methods
.method public a(IJ)V
    .registers 6

    .line 99
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/p$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/controller/p$3;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/q;IJ)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    return-void
.end method

.method public b()V
    .registers 5

    .line 78
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/p$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/p$2;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/q;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    .line 94
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->f:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public c()V
    .registers 9

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 134
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->c:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2e

    .line 136
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->f:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "UPE"

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEventRecorded, no MESSAGE_UPLOAD_EVENT, send a msg for UPLOAD_POLICY_INTERVAL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d

    .line 140
    :cond_2e
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->c:I

    if-eqz v0, :cond_55

    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->c:I

    if-ne v0, v1, :cond_37

    goto :goto_55

    .line 144
    :cond_37
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v0, "UPE"

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEventRecorded, no MESSAGE_UPLOAD_EVENT, send a msg for UPLOAD_POLICY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d

    .line 141
    :cond_55
    :goto_55
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->f:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "UPE"

    const-string v4, "onEventRecorded, no MESSAGE_UPLOAD_EVENT, send a msg for UPLOAD_POLICY %d with delay %dms "

    const/4 v5, 0x2

    .line 142
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->c:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v0, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_76} :catch_77

    goto :goto_7d

    :catch_77
    move-exception v0

    const-string v1, "onEventRecorded exception: "

    .line 150
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7d
    :goto_7d
    return-void
.end method

.method public d()V
    .registers 3

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->e:J

    .line 158
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->b()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/p$4;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/p$4;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/q;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    return-void
.end method

.method public e()Z
    .registers 9

    .line 177
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/l;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-string v0, "RemoteDataUploadManager isUploading, should NOT upload now"

    .line 179
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;)V

    return v1

    .line 182
    :cond_d
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->c:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v0, v2, :cond_3a

    packed-switch v0, :pswitch_data_50

    goto :goto_38

    .line 194
    :pswitch_17
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/g;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/g;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/g;->d()I

    move-result v0

    .line 195
    iget-boolean v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->b:Z

    if-nez v2, :cond_2a

    const/16 v2, 0x32

    if-lt v0, v2, :cond_29

    goto :goto_2a

    :cond_29
    return v1

    .line 196
    :cond_2a
    :goto_2a
    iput-boolean v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->b:Z

    return v3

    .line 188
    :pswitch_2d
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_38

    return v3

    :cond_38
    :goto_38
    return v1

    :pswitch_39
    return v3

    .line 203
    :cond_3a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 204
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->b:Z

    if-nez v0, :cond_4d

    iget-wide v6, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->e:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->d:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_4c

    goto :goto_4d

    :cond_4c
    return v1

    .line 205
    :cond_4d
    :goto_4d
    iput-boolean v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->b:Z

    return v3

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_39
        :pswitch_2d
        :pswitch_17
    .end packed-switch
.end method

.method public f()J
    .registers 3

    .line 215
    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->d:J

    return-wide v0
.end method

.method public g()I
    .registers 2

    .line 219
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/q;->c:I

    return v0
.end method
