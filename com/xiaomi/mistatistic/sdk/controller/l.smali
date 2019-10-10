.class public Lcom/xiaomi/mistatistic/sdk/controller/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/controller/l$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)V
    .registers 4

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p0

    .line 166
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object p0

    const-string p1, "next_upload_ts"

    invoke-static {p0, p1, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method private a(JJZ)V
    .registers 7

    .line 116
    :try_start_0
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/g;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/g;-><init>()V

    .line 117
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {v0, p5}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Ljava/lang/Boolean;)V

    .line 118
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(JJ)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_18

    :catch_10
    move-exception p1

    const-string p2, "RDUM"

    const-string p3, "doDeleting exception: "

    .line 120
    invoke-static {p2, p3, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    :goto_18
    sget-object p1, Lcom/xiaomi/mistatistic/sdk/controller/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p1, "RDUM"

    .line 123
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "delete done, set Uploading "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/xiaomi/mistatistic/sdk/controller/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/l;)V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->f()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/l;JJZ)V
    .registers 6

    .line 22
    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a(JJZ)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/l;Ljava/lang/String;JJIZ)V
    .registers 8

    .line 22
    invoke-direct/range {p0 .. p7}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a(Ljava/lang/String;JJIZ)V

    return-void
.end method

.method private a(Ljava/lang/String;JJIZ)V
    .registers 16

    .line 97
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;

    new-instance v7, Lcom/xiaomi/mistatistic/sdk/controller/l$2;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/mistatistic/sdk/controller/l$2;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/l;JJ)V

    invoke-direct {v0, p1, v7, p6, p7}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;-><init>(Ljava/lang/String;Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;IZ)V

    .line 110
    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a()V

    return-void
.end method

.method private b(Z)V
    .registers 7

    .line 78
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->b()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;

    .line 79
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a()Lcom/xiaomi/mistatistic/sdk/controller/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/controller/q;->f()J

    move-result-wide v2

    new-instance v4, Lcom/xiaomi/mistatistic/sdk/controller/l$1;

    invoke-direct {v4, p0}, Lcom/xiaomi/mistatistic/sdk/controller/l$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/l;)V

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;-><init>(JZLcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;)V

    .line 78
    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    return-void
.end method

.method public static b()Z
    .registers 1

    .line 73
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .registers 6

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 173
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "next_upload_ts"

    const-wide/16 v4, 0x0

    .line 172
    invoke-static {v2, v3, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method static synthetic d()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 22
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private e()V
    .registers 3

    .line 128
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/l$3;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/l$3;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/l;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    return-void
.end method

.method private f()V
    .registers 6

    .line 139
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->f()Z

    move-result v0

    if-eqz v0, :cond_68

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-gt v0, v1, :cond_68

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 143
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_68

    .line 145
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_27
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 146
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_27

    .line 147
    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_3f
    const-string v1, ","

    .line 151
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/k;

    const-string v2, "mistat_basic"

    const-string v3, "foreground_package"

    invoke-direct {v1, v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/data/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/d;->f()Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->c()Z

    move-result v0

    if-eqz v0, :cond_5e

    :cond_5a
    const/4 v0, 0x1

    .line 154
    invoke-virtual {v1, v0}, Lcom/xiaomi/mistatistic/sdk/data/k;->a(I)V

    .line 156
    :cond_5e
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_61} :catch_62

    goto :goto_68

    :catch_62
    move-exception v0

    const-string v1, ""

    .line 160
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_68
    :goto_68
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a(Z)V

    return-void
.end method

.method public a(Z)V
    .registers 7

    .line 33
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->d()Z

    move-result v0

    if-nez v0, :cond_d

    const-string p1, "upload is disabled."

    const/4 v0, 0x0

    .line 34
    invoke-static {p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 37
    :cond_d
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string p1, "RDUM"

    const-string v0, "Current network is not connected."

    .line 38
    invoke-static {p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 43
    :cond_1f
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 45
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/l;->c()Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 46
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->e()V

    .line 47
    new-instance p1, Lcom/xiaomi/mistatistic/sdk/controller/g;

    invoke-direct {p1}, Lcom/xiaomi/mistatistic/sdk/controller/g;-><init>()V

    .line 48
    invoke-direct {p0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/l;->b(Z)V

    .line 49
    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/controller/g;->f()Z

    move-result p1

    if-eqz p1, :cond_43

    .line 50
    invoke-direct {p0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/l;->b(Z)V

    .line 52
    :cond_43
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a()Lcom/xiaomi/mistatistic/sdk/controller/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/controller/q;->d()V

    goto :goto_99

    .line 54
    :cond_4b
    sget-object p1, Lcom/xiaomi/mistatistic/sdk/controller/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "upload is not allowed by the server. set Uploading "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->d(Ljava/lang/String;)V

    goto :goto_99

    :cond_6b
    if-eqz p1, :cond_99

    const-string p1, "sUploading %s, trigger uploading job with delay %d"

    const/4 v0, 0x2

    .line 58
    new-array v0, v0, [Ljava/lang/Object;

    sget-object v3, Lcom/xiaomi/mistatistic/sdk/controller/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    const-wide/16 v2, 0x2710

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->b()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object p1

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/l$a;

    invoke-direct {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/l$a;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/l;)V

    invoke-virtual {p1, v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;J)V

    :cond_99
    :goto_99
    return-void
.end method
