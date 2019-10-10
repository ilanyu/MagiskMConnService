.class public Lmiui/cloud/common/SwitchFileLogSender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/cloud/common/XLogger$LogSender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/common/SwitchFileLogSender$PathProvider;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MIUI/debug_log/%s"

.field private static final b:Ljava/lang/String; = ".log"


# instance fields
.field private final c:Landroid/content/Context;

.field private d:Z

.field private e:Lmiui/cloud/common/XLogger$LogSender;

.field private f:Lmiui/cloud/common/SwitchFileLogSender$PathProvider;

.field private g:I

.field private h:I

.field private i:Ljava/io/FileOutputStream;

.field private j:Landroid/os/FileObserver;

.field private k:J

.field private l:J

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IILmiui/cloud/common/XLogger$LogSender;)V
    .registers 12

    .line 37
    new-instance v2, Lmiui/cloud/common/SwitchFileLogSender$1;

    invoke-direct {v2, p2}, Lmiui/cloud/common/SwitchFileLogSender$1;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lmiui/cloud/common/SwitchFileLogSender;-><init>(Landroid/content/Context;Lmiui/cloud/common/SwitchFileLogSender$PathProvider;IILmiui/cloud/common/XLogger$LogSender;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/cloud/common/SwitchFileLogSender$PathProvider;IILmiui/cloud/common/XLogger$LogSender;)V
    .registers 7

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-ne v0, p1, :cond_36

    if-eqz p2, :cond_2e

    if-lez p3, :cond_26

    const/4 v0, 0x1

    if-le p4, v0, :cond_1e

    .line 69
    iput-object p5, p0, Lmiui/cloud/common/SwitchFileLogSender;->e:Lmiui/cloud/common/XLogger$LogSender;

    .line 70
    iput p3, p0, Lmiui/cloud/common/SwitchFileLogSender;->g:I

    .line 71
    iput p4, p0, Lmiui/cloud/common/SwitchFileLogSender;->h:I

    .line 72
    iput-object p2, p0, Lmiui/cloud/common/SwitchFileLogSender;->f:Lmiui/cloud/common/SwitchFileLogSender$PathProvider;

    .line 74
    iput-object p1, p0, Lmiui/cloud/common/SwitchFileLogSender;->c:Landroid/content/Context;

    const/4 p1, 0x0

    .line 75
    iput-boolean p1, p0, Lmiui/cloud/common/SwitchFileLogSender;->d:Z

    return-void

    .line 66
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxFileCount should >1. "

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxFileSizeInByte should >0. "

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pathProvider should not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "appContext is not the application context. "

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()V
    .registers 2

    .line 100
    iget-boolean v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->d:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->d:Z

    .line 102
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lmiui/cloud/common/SwitchFileLogSender;->a(Landroid/content/Context;)V

    :cond_c
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    .line 351
    new-instance v0, Lmiui/cloud/common/SwitchFileLogSender$3;

    invoke-direct {v0, p0}, Lmiui/cloud/common/SwitchFileLogSender$3;-><init>(Lmiui/cloud/common/SwitchFileLogSender;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Lmiui/cloud/common/SwitchFileLogSender;)V
    .registers 1

    .line 26
    invoke-direct {p0}, Lmiui/cloud/common/SwitchFileLogSender;->c()V

    return-void
.end method

.method private declared-synchronized b()V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x6

    .line 170
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "========================== shut down ========================== "

    .line 168
    invoke-direct {p0, v0, v1, v2}, Lmiui/cloud/common/SwitchFileLogSender;->b(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->m:Z

    .line 175
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->i:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_19

    .line 176
    invoke-direct {p0}, Lmiui/cloud/common/SwitchFileLogSender;->e()V
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_1b

    .line 178
    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    .line 167
    monitor-exit p0

    throw v0
.end method

.method private b(ILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 108
    invoke-direct {p0}, Lmiui/cloud/common/SwitchFileLogSender;->a()V

    .line 110
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->e:Lmiui/cloud/common/XLogger$LogSender;

    if-eqz v0, :cond_c

    .line 111
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->e:Lmiui/cloud/common/XLogger$LogSender;

    invoke-interface {v0, p1, p2, p3}, Lmiui/cloud/common/XLogger$LogSender;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_c
    invoke-virtual {p0, p1}, Lmiui/cloud/common/SwitchFileLogSender;->a(I)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 118
    :cond_13
    iget-boolean v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->m:Z

    const/4 v1, 0x6

    if-eqz v0, :cond_2c

    .line 119
    iget-object p1, p0, Lmiui/cloud/common/SwitchFileLogSender;->e:Lmiui/cloud/common/XLogger$LogSender;

    if-eqz p1, :cond_2b

    .line 120
    iget-object p1, p0, Lmiui/cloud/common/SwitchFileLogSender;->e:Lmiui/cloud/common/XLogger$LogSender;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Shutdown state. Skip outputing. "

    invoke-interface {p1, v1, p2, p3}, Lmiui/cloud/common/XLogger$LogSender;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2b
    return-void

    .line 125
    :cond_2c
    invoke-direct {p0}, Lmiui/cloud/common/SwitchFileLogSender;->d()V

    .line 127
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->i:Ljava/io/FileOutputStream;

    if-nez v0, :cond_47

    .line 128
    iget-object p1, p0, Lmiui/cloud/common/SwitchFileLogSender;->e:Lmiui/cloud/common/XLogger$LogSender;

    if-eqz p1, :cond_46

    .line 129
    iget-object p1, p0, Lmiui/cloud/common/SwitchFileLogSender;->e:Lmiui/cloud/common/XLogger$LogSender;

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Null output stream. Skip outputing. "

    .line 129
    invoke-interface {p1, v1, p2, p3}, Lmiui/cloud/common/XLogger$LogSender;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_46
    return-void

    .line 137
    :cond_47
    invoke-virtual {p0, p1}, Lmiui/cloud/common/SwitchFileLogSender;->b(I)Ljava/lang/String;

    move-result-object p1

    .line 139
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v2, "LV:%s, TM: %s, TAG: %s, MSG: %s\n"

    const/4 v3, 0x4

    .line 140
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 142
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v3, v0

    const/4 p1, 0x2

    aput-object p2, v3, p1

    const/4 p1, 0x3

    aput-object p3, v3, p1

    .line 140
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 147
    iget-wide p2, p0, Lmiui/cloud/common/SwitchFileLogSender;->k:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr p2, v2

    iput-wide p2, p0, Lmiui/cloud/common/SwitchFileLogSender;->k:J

    .line 150
    :try_start_7b
    iget-object p2, p0, Lmiui/cloud/common/SwitchFileLogSender;->i:Ljava/io/FileOutputStream;

    invoke-virtual {p2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 151
    iget-object p1, p0, Lmiui/cloud/common/SwitchFileLogSender;->i:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_85} :catch_86

    goto :goto_a2

    :catch_86
    move-exception p1

    .line 153
    iget-object p2, p0, Lmiui/cloud/common/SwitchFileLogSender;->e:Lmiui/cloud/common/XLogger$LogSender;

    if-eqz p2, :cond_a2

    .line 154
    iget-object p2, p0, Lmiui/cloud/common/SwitchFileLogSender;->e:Lmiui/cloud/common/XLogger$LogSender;

    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v2, "Failed to output log, IOException: %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v4

    .line 157
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-interface {p2, v1, p3, p1}, Lmiui/cloud/common/XLogger$LogSender;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_a2
    :goto_a2
    iget-wide p1, p0, Lmiui/cloud/common/SwitchFileLogSender;->k:J

    iget p3, p0, Lmiui/cloud/common/SwitchFileLogSender;->g:I

    int-to-long v0, p3

    cmp-long p1, p1, v0

    if-ltz p1, :cond_ae

    .line 162
    invoke-direct {p0}, Lmiui/cloud/common/SwitchFileLogSender;->e()V

    :cond_ae
    return-void
.end method

.method static synthetic b(Lmiui/cloud/common/SwitchFileLogSender;)V
    .registers 1

    .line 26
    invoke-direct {p0}, Lmiui/cloud/common/SwitchFileLogSender;->b()V

    return-void
.end method

.method private declared-synchronized c()V
    .registers 9

    monitor-enter p0

    .line 183
    :try_start_1
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->i:Ljava/io/FileOutputStream;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_4b

    if-nez v0, :cond_7

    .line 184
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 189
    :try_start_8
    iget-object v1, p0, Lmiui/cloud/common/SwitchFileLogSender;->i:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_e} :catch_f
    .catchall {:try_start_8 .. :try_end_e} :catchall_4b

    goto :goto_10

    :catch_f
    move-object v1, v0

    :goto_10
    if-nez v1, :cond_14

    .line 194
    monitor-exit p0

    return-void

    :cond_14
    const/4 v2, 0x0

    .line 200
    :try_start_15
    invoke-static {v1}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v1
    :try_end_19
    .catch Landroid/system/ErrnoException; {:try_start_15 .. :try_end_19} :catch_1c
    .catchall {:try_start_15 .. :try_end_19} :catchall_4b

    move-object v0, v1

    const/4 v1, 0x0

    goto :goto_1f

    :catch_1c
    move-exception v1

    .line 202
    :try_start_1d
    iget v1, v1, Landroid/system/ErrnoException;->errno:I

    :goto_1f
    const/4 v3, 0x1

    if-eqz v0, :cond_2b

    .line 206
    iget-wide v4, v0, Landroid/system/StructStat;->st_nlink:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_2b

    const/4 v2, 0x1

    .line 209
    :cond_2b
    sget v0, Landroid/system/OsConstants;->ENOENT:I

    if-ne v1, v0, :cond_30

    const/4 v2, 0x1

    :cond_30
    if-eqz v2, :cond_49

    .line 214
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->e:Lmiui/cloud/common/XLogger$LogSender;

    if-eqz v0, :cond_46

    .line 215
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->e:Lmiui/cloud/common/XLogger$LogSender;

    const/4 v1, 0x5

    .line 217
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "File unlinked. "

    .line 215
    invoke-interface {v0, v1, v2, v3}, Lmiui/cloud/common/XLogger$LogSender;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_46
    invoke-direct {p0}, Lmiui/cloud/common/SwitchFileLogSender;->e()V
    :try_end_49
    .catchall {:try_start_1d .. :try_end_49} :catchall_4b

    .line 222
    :cond_49
    monitor-exit p0

    return-void

    :catchall_4b
    move-exception v0

    .line 182
    monitor-exit p0

    throw v0
.end method

.method private d()V
    .registers 15

    .line 225
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->i:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_5

    return-void

    .line 229
    :cond_5
    iget-wide v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x6

    if-lez v0, :cond_34

    .line 230
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 231
    iget-wide v6, p0, Lmiui/cloud/common/SwitchFileLogSender;->l:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x2bf20

    cmp-long v0, v4, v6

    if-gez v0, :cond_34

    .line 232
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->e:Lmiui/cloud/common/XLogger$LogSender;

    if-eqz v0, :cond_33

    .line 233
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->e:Lmiui/cloud/common/XLogger$LogSender;

    .line 235
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to open log file recently. Abort. "

    .line 233
    invoke-interface {v0, v1, v2, v3}, Lmiui/cloud/common/XLogger$LogSender;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_33
    return-void

    .line 243
    :cond_34
    :try_start_34
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->f:Lmiui/cloud/common/SwitchFileLogSender$PathProvider;

    iget-object v4, p0, Lmiui/cloud/common/SwitchFileLogSender;->c:Landroid/content/Context;

    invoke-interface {v0, v4}, Lmiui/cloud/common/SwitchFileLogSender$PathProvider;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_5f

    .line 245
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->e:Lmiui/cloud/common/XLogger$LogSender;

    if-eqz v0, :cond_51

    .line 246
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->e:Lmiui/cloud/common/XLogger$LogSender;

    .line 248
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Failed to get base log path. Abort. "

    .line 246
    invoke-interface {v0, v1, v4, v5}, Lmiui/cloud/common/XLogger$LogSender;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_34 .. :try_end_51} :catchall_1d1

    .line 330
    :cond_51
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->i:Ljava/io/FileOutputStream;

    if-nez v0, :cond_5c

    .line 331
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->l:J

    goto :goto_5e

    .line 333
    :cond_5c
    iput-wide v2, p0, Lmiui/cloud/common/SwitchFileLogSender;->l:J

    :goto_5e
    return-void

    .line 253
    :cond_5f
    :try_start_5f
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmiui/cloud/os/MultiuserUtils;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_82

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 256
    :cond_82
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_b7

    .line 257
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->e:Lmiui/cloud/common/XLogger$LogSender;

    if-eqz v0, :cond_a9

    .line 258
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->e:Lmiui/cloud/common/XLogger$LogSender;

    .line 260
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Failed to create folder %s. "

    new-array v6, v6, [Ljava/lang/Object;

    .line 261
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v5

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 258
    invoke-interface {v0, v1, v7, v4}, Lmiui/cloud/common/XLogger$LogSender;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_a9
    .catchall {:try_start_5f .. :try_end_a9} :catchall_1d1

    .line 330
    :cond_a9
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->i:Ljava/io/FileOutputStream;

    if-nez v0, :cond_b4

    .line 331
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->l:J

    goto :goto_b6

    .line 333
    :cond_b4
    iput-wide v2, p0, Lmiui/cloud/common/SwitchFileLogSender;->l:J

    :goto_b6
    return-void

    .line 266
    :cond_b7
    :try_start_b7
    invoke-static {v4}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "unknown"

    .line 267
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ec

    const-string v7, "mounted"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ec

    .line 268
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->e:Lmiui/cloud/common/XLogger$LogSender;

    if-eqz v0, :cond_de

    .line 269
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->e:Lmiui/cloud/common/XLogger$LogSender;

    .line 271
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Storage not mounted. "

    .line 269
    invoke-interface {v0, v1, v4, v5}, Lmiui/cloud/common/XLogger$LogSender;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_de
    .catchall {:try_start_b7 .. :try_end_de} :catchall_1d1

    .line 330
    :cond_de
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->i:Ljava/io/FileOutputStream;

    if-nez v0, :cond_e9

    .line 331
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->l:J

    goto :goto_eb

    .line 333
    :cond_e9
    iput-wide v2, p0, Lmiui/cloud/common/SwitchFileLogSender;->l:J

    :goto_eb
    return-void

    :cond_ec
    const/4 v0, 0x0

    :goto_ed
    const/4 v7, 0x0

    .line 279
    :try_start_ee
    iget v8, p0, Lmiui/cloud/common/SwitchFileLogSender;->h:I

    if-ge v0, v8, :cond_11e

    .line 280
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ".log"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 281
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_10f

    goto :goto_11e

    .line 284
    :cond_10f
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    iget v10, p0, Lmiui/cloud/common/SwitchFileLogSender;->g:I

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_11b

    goto :goto_11e

    :cond_11b
    add-int/lit8 v0, v0, 0x1

    goto :goto_ed

    :cond_11e
    :goto_11e
    if-nez v7, :cond_16d

    .line 291
    new-instance v0, Ljava/io/File;

    const-string v7, "0.log"

    invoke-direct {v0, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    move-wide v9, v7

    const/4 v0, 0x1

    move-wide v7, v2

    .line 295
    :goto_12e
    iget v11, p0, Lmiui/cloud/common/SwitchFileLogSender;->h:I

    if-ge v0, v11, :cond_155

    .line 296
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ".log"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v4, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 297
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    cmp-long v13, v11, v9

    if-gez v13, :cond_152

    int-to-long v7, v0

    move-wide v9, v11

    :cond_152
    add-int/lit8 v0, v0, 0x1

    goto :goto_12e

    .line 304
    :cond_155
    new-instance v0, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ".log"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_16b
    .catchall {:try_start_ee .. :try_end_16b} :catchall_1d1

    const/4 v7, 0x0

    goto :goto_16f

    :cond_16d
    move-object v0, v7

    const/4 v7, 0x1

    .line 309
    :goto_16f
    :try_start_16f
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v8, p0, Lmiui/cloud/common/SwitchFileLogSender;->i:Ljava/io/FileOutputStream;
    :try_end_176
    .catch Ljava/io/FileNotFoundException; {:try_start_16f .. :try_end_176} :catch_1a0
    .catchall {:try_start_16f .. :try_end_176} :catchall_1d1

    if-eqz v7, :cond_17d

    .line 320
    :try_start_178
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_17e

    :cond_17d
    move-wide v0, v2

    :goto_17e
    iput-wide v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->k:J

    .line 322
    new-instance v0, Lmiui/cloud/common/SwitchFileLogSender$2;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x600

    invoke-direct {v0, p0, v1, v4}, Lmiui/cloud/common/SwitchFileLogSender$2;-><init>(Lmiui/cloud/common/SwitchFileLogSender;Ljava/lang/String;I)V

    iput-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->j:Landroid/os/FileObserver;

    .line 328
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->j:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V
    :try_end_192
    .catchall {:try_start_178 .. :try_end_192} :catchall_1d1

    .line 330
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->i:Ljava/io/FileOutputStream;

    if-nez v0, :cond_19d

    .line 331
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->l:J

    goto :goto_19f

    .line 333
    :cond_19d
    iput-wide v2, p0, Lmiui/cloud/common/SwitchFileLogSender;->l:J

    :goto_19f
    return-void

    :catch_1a0
    move-exception v4

    .line 311
    :try_start_1a1
    iget-object v7, p0, Lmiui/cloud/common/SwitchFileLogSender;->e:Lmiui/cloud/common/XLogger$LogSender;

    if-eqz v7, :cond_1c3

    .line 312
    iget-object v7, p0, Lmiui/cloud/common/SwitchFileLogSender;->e:Lmiui/cloud/common/XLogger$LogSender;

    .line 314
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Failed to switch to file %s, error: %s. "

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 315
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v5

    aput-object v4, v10, v6

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-interface {v7, v1, v8, v0}, Lmiui/cloud/common/XLogger$LogSender;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1c3
    .catchall {:try_start_1a1 .. :try_end_1c3} :catchall_1d1

    .line 330
    :cond_1c3
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->i:Ljava/io/FileOutputStream;

    if-nez v0, :cond_1ce

    .line 331
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->l:J

    goto :goto_1d0

    .line 333
    :cond_1ce
    iput-wide v2, p0, Lmiui/cloud/common/SwitchFileLogSender;->l:J

    :goto_1d0
    return-void

    :catchall_1d1
    move-exception v0

    .line 330
    iget-object v1, p0, Lmiui/cloud/common/SwitchFileLogSender;->i:Ljava/io/FileOutputStream;

    if-nez v1, :cond_1dd

    .line 331
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lmiui/cloud/common/SwitchFileLogSender;->l:J

    goto :goto_1df

    .line 333
    :cond_1dd
    iput-wide v2, p0, Lmiui/cloud/common/SwitchFileLogSender;->l:J

    :goto_1df
    throw v0
.end method

.method private e()V
    .registers 3

    .line 339
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->j:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v0, 0x0

    .line 340
    iput-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->j:Landroid/os/FileObserver;

    .line 342
    iget-object v1, p0, Lmiui/cloud/common/SwitchFileLogSender;->i:Ljava/io/FileOutputStream;

    invoke-static {v1}, Lmiui/cloud/common/a;->a(Ljava/io/Closeable;)V

    .line 343
    iput-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->i:Ljava/io/FileOutputStream;

    const-wide/16 v0, 0x0

    .line 345
    iput-wide v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->k:J

    .line 347
    iput-wide v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->l:J

    return-void
.end method


# virtual methods
.method public declared-synchronized a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 80
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lmiui/cloud/common/SwitchFileLogSender;->b(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 81
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    .line 79
    monitor-exit p0

    throw p1
.end method

.method protected a(I)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method protected b(I)Ljava/lang/String;
    .registers 2

    packed-switch p1, :pswitch_data_1a

    .line 96
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_8
    const-string p1, "A"

    return-object p1

    :pswitch_b
    const-string p1, "E"

    return-object p1

    :pswitch_e
    const-string p1, "W"

    return-object p1

    :pswitch_11
    const-string p1, "I"

    return-object p1

    :pswitch_14
    const-string p1, "D"

    return-object p1

    :pswitch_17
    const-string p1, "V"

    return-object p1

    :pswitch_data_1a
    .packed-switch 0x2
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
