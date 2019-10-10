.class public Lcom/xiaomi/mistatistic/sdk/controller/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/xiaomi/mistatistic/sdk/controller/n; = null

.field private static c:J = 0x7530L

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/mistatistic/sdk/data/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/n;->d:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/m$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/m$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/n;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/n;->b:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/xiaomi/mistatistic/sdk/controller/n;
    .registers 1

    .line 34
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/n;->a:Lcom/xiaomi/mistatistic/sdk/controller/n;

    if-nez v0, :cond_b

    .line 35
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/n;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/n;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/n;->a:Lcom/xiaomi/mistatistic/sdk/controller/n;

    .line 37
    :cond_b
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/n;->a:Lcom/xiaomi/mistatistic/sdk/controller/n;

    return-object v0
.end method

.method private a(Landroid/content/Context;J)V
    .registers 6

    .line 202
    new-instance p1, Lcom/xiaomi/mistatistic/sdk/data/o;

    const-wide/16 v0, 0x0

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/xiaomi/mistatistic/sdk/data/o;-><init>(JJ)V

    .line 203
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    return-void
.end method

.method private a(Landroid/content/Context;JJ)V
    .registers 13

    .line 179
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v0, "NULL"

    :cond_c
    move-object v6, v0

    .line 183
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/n;

    move-object v1, v0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/mistatistic/sdk/data/n;-><init>(JJLjava/lang/String;)V

    .line 184
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    const-string p2, "session_begin"

    const-wide/16 p3, 0x0

    .line 185
    invoke-static {p1, p2, p3, p4}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    const-string p2, "last_deactivate"

    .line 186
    invoke-static {p1, p2, p3, p4}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/n;Landroid/content/Context;JJ)V
    .registers 6

    .line 21
    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/mistatistic/sdk/controller/n;->a(Landroid/content/Context;JJ)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/n;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/n;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/n;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 19

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 77
    :try_start_4
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v8

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string v1, "session_begin"

    const-wide/16 v2, 0x0

    .line 79
    invoke-static {v8, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    const-string v1, "last_deactivate"

    .line 80
    invoke-static {v8, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v11

    const-string v1, "pv_path"

    const-string v6, ""

    .line 81
    invoke-static {v8, v1, v6}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    cmp-long v6, v4, v2

    if-gtz v6, :cond_2f

    const-string v6, "session_begin"

    .line 84
    invoke-static {v8, v6, v9, v10}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 86
    invoke-direct {v7, v8, v9, v10}, Lcom/xiaomi/mistatistic/sdk/controller/n;->a(Landroid/content/Context;J)V

    goto :goto_46

    :cond_2f
    cmp-long v6, v11, v2

    if-gtz v6, :cond_46

    const-string v6, "session_begin"

    .line 89
    invoke-static {v8, v6, v9, v10}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 90
    invoke-direct {v7, v8, v9, v10}, Lcom/xiaomi/mistatistic/sdk/controller/n;->a(Landroid/content/Context;J)V

    .line 91
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_46

    .line 93
    invoke-direct {v7, v8, v1}, Lcom/xiaomi/mistatistic/sdk/controller/n;->b(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, ""

    :cond_46
    :goto_46
    move-object v13, v1

    cmp-long v1, v11, v2

    if-lez v1, :cond_6f

    sub-long v1, v9, v11

    .line 98
    sget-wide v14, Lcom/xiaomi/mistatistic/sdk/controller/n;->c:J

    cmp-long v1, v1, v14

    if-lez v1, :cond_6f

    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v4

    move-wide v5, v11

    .line 101
    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/mistatistic/sdk/controller/n;->a(Landroid/content/Context;JJ)V

    .line 102
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 104
    invoke-direct {v7, v8, v13}, Lcom/xiaomi/mistatistic/sdk/controller/n;->b(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, ""

    move-object v13, v1

    :cond_67
    const-string v1, "session_begin"

    .line 108
    invoke-static {v8, v1, v9, v10}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 109
    invoke-direct {v7, v8, v9, v10}, Lcom/xiaomi/mistatistic/sdk/controller/n;->a(Landroid/content/Context;J)V

    .line 112
    :cond_6f
    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_97

    .line 114
    :cond_7b
    invoke-direct {v7, v13, v0}, Lcom/xiaomi/mistatistic/sdk/controller/n;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pv_path"

    .line 115
    invoke-static {v8, v2, v1}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "source_path"

    const-string v2, ""

    .line 117
    invoke-static {v8, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p2

    .line 118
    invoke-direct {v7, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/n;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "source_path"

    .line 119
    invoke-static {v8, v2, v1}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_97
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/l;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/xiaomi/mistatistic/sdk/data/l;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    .line 124
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/n;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a5} :catch_a6

    goto :goto_ac

    :catch_a6
    move-exception v0

    const-string v1, "processActActivated exception: "

    .line 126
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_ac
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 190
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "source_path"

    const-string v1, ""

    .line 192
    invoke-static {p1, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/m;

    invoke-direct {v1, p2, v0}, Lcom/xiaomi/mistatistic/sdk/data/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    const-string p2, "source_path"

    const-string v0, ""

    .line 196
    invoke-static {p1, p2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "pv_path"

    const-string v0, ""

    .line 197
    invoke-static {p1, p2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method static synthetic b(Lcom/xiaomi/mistatistic/sdk/controller/n;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 144
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 145
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "last_deactivate"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 146
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/n;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8b

    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 149
    sget-object p1, Lcom/xiaomi/mistatistic/sdk/controller/n;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_4d

    .line 151
    :cond_2c
    sget-object p1, Lcom/xiaomi/mistatistic/sdk/controller/n;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_34
    if-ltz p1, :cond_4c

    .line 152
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/n;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/mistatistic/sdk/data/l;

    .line 153
    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/data/l;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    goto :goto_4d

    :cond_49
    add-int/lit8 p1, p1, -0x1

    goto :goto_34

    :cond_4c
    const/4 p1, -0x1

    :goto_4d
    if-ltz p1, :cond_8b

    .line 161
    sget-object p2, Lcom/xiaomi/mistatistic/sdk/controller/n;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaomi/mistatistic/sdk/data/l;

    .line 162
    invoke-virtual {p2}, Lcom/xiaomi/mistatistic/sdk/data/l;->f()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-virtual {p2}, Lcom/xiaomi/mistatistic/sdk/data/l;->e()J

    move-result-wide v2

    .line 164
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v0, 0x0

    sub-long/2addr v4, v2

    .line 165
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8b

    const-wide/16 v0, 0x0

    cmp-long v2, v2, v0

    if-lez v2, :cond_8b

    cmp-long v0, v4, v0

    if-lez v0, :cond_8b

    .line 166
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/mistatistic/sdk/data/l;->a(Ljava/lang/Long;)V

    .line 168
    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    .line 169
    sget-object p2, Lcom/xiaomi/mistatistic/sdk/controller/n;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_84} :catch_85

    goto :goto_8b

    :catch_85
    move-exception p1

    const-string p2, "processActDeativated exception: "

    .line 174
    invoke-static {p2, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8b
    :goto_8b
    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_3

    return-object p2

    .line 221
    :cond_3
    :try_start_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    .line 222
    :cond_11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, ""

    .line 224
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_21} :catch_22

    :cond_21
    return-object p2

    :catch_22
    move-exception p1

    const-string p2, "transformActName exception"

    .line 228
    invoke-static {p2, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, ""

    return-object p1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_18

    .line 210
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_18
    return-object p2
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/n;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/m$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/mistatistic/sdk/controller/m$3;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/n;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    .line 139
    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/n;->b:Landroid/os/Handler;

    sget-wide v0, Lcom/xiaomi/mistatistic/sdk/controller/n;->c:J

    const p2, 0x1df5e77

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/n;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 66
    iget-object p2, p0, Lcom/xiaomi/mistatistic/sdk/controller/n;->b:Landroid/os/Handler;

    const v0, 0x1df5e77

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 67
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object p2

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/m$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/xiaomi/mistatistic/sdk/controller/m$2;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/n;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    return-void
.end method
