.class public abstract Lcom/xiaomi/mistatistic/sdk/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:J = 0xea60L

.field public static final h:J = 0x5265c00L

.field private static i:Z = false

.field private static j:Z = false

.field private static final k:Ljava/lang/String; = "default_category"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()I
    .registers 1

    .line 160
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->g()V

    .line 161
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a()Lcom/xiaomi/mistatistic/sdk/controller/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->g()I

    move-result v0

    return v0
.end method

.method public static final a(IJ)V
    .registers 5

    .line 147
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    .line 148
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 151
    :cond_e
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->g()V

    const/4 v0, 0x4

    if-ne p0, v0, :cond_2b

    const-wide/32 v0, 0xea60

    cmp-long v0, p1, v0

    if-ltz v0, :cond_23

    const-wide/32 v0, 0x5265c00

    cmp-long v0, p1, v0

    if-gtz v0, :cond_23

    goto :goto_2b

    .line 154
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "interval should be set between 1 minutes and 1 day"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 156
    :cond_2b
    :goto_2b
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a()Lcom/xiaomi/mistatistic/sdk/controller/q;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a(IJ)V

    return-void
.end method

.method public static a(ILjava/lang/String;)V
    .registers 3

    .line 553
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    .line 554
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 557
    :cond_e
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->g()V

    .line 558
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->h()Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    .line 561
    :cond_18
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/b;->a()Lcom/xiaomi/mistatistic/sdk/controller/b;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/b;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(ILjava/lang/String;J)V
    .registers 5

    .line 565
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    .line 566
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 569
    :cond_e
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->g()V

    .line 570
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->h()Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    .line 573
    :cond_18
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/b;->a()Lcom/xiaomi/mistatistic/sdk/controller/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/xiaomi/mistatistic/sdk/controller/b;->a(Ljava/lang/String;JI)V

    .line 574
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c()V

    return-void
.end method

.method public static final a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 529
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    .line 530
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 533
    :cond_e
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->g()V

    .line 534
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->h()Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    .line 537
    :cond_18
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/b;->a()Lcom/xiaomi/mistatistic/sdk/controller/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lcom/xiaomi/mistatistic/sdk/controller/b;->b(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static final a(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    .line 203
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    .line 204
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 207
    :cond_e
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->g()V

    .line 209
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;

    invoke-direct {v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    .line 211
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/n;->a()Lcom/xiaomi/mistatistic/sdk/controller/n;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {v0, p0, p1, v1}, Lcom/xiaomi/mistatistic/sdk/controller/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a()Lcom/xiaomi/mistatistic/sdk/controller/o;

    move-result-object p1

    .line 214
    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/controller/o;->b()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 215
    invoke-virtual {p1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a(Landroid/app/Activity;)V

    :cond_37
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    .line 101
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    .line 102
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 105
    :cond_e
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_16

    :cond_15
    move-object p0, v0

    .line 109
    :goto_16
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/r;->a(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_24

    const-string p0, "MI_STAT"

    const-string v0, "ABTest is NOT allow to register in background running"

    .line 110
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 113
    :cond_24
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/b;->a()Lcom/xiaomi/mistatistic/sdk/controller/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/b;->b()V

    const/4 p0, 0x1

    .line 114
    sput-boolean p0, Lcom/xiaomi/mistatistic/sdk/f;->j:Z

    const-string p0, "MI_STAT"

    const-string v0, "ABTest register success"

    .line 115
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final a(Landroid/content/Context;J)V
    .registers 5

    .line 135
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    .line 136
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const-wide v0, 0x9a7ec800L

    cmp-long v0, p1, v0

    if-ltz v0, :cond_25

    const-wide v0, 0x757b12c00L

    cmp-long v0, p1, v0

    if-lez v0, :cond_21

    goto :goto_25

    .line 143
    :cond_21
    invoke-static {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Landroid/content/Context;J)V

    return-void

    :cond_25
    :goto_25
    const-string p0, "MI_STAT"

    const-string p1, "The value of anonymous expiration interval is invalid."

    .line 140
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-string v0, ""

    .line 220
    invoke-static {p0, p1, v0}, Lcom/xiaomi/mistatistic/sdk/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 179
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    .line 180
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 183
    :cond_e
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->g()V

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1c

    goto :goto_24

    .line 185
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pageName should\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 189
    :cond_24
    :goto_24
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;

    invoke-direct {v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    .line 191
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/n;->a()Lcom/xiaomi/mistatistic/sdk/controller/n;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 191
    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_52

    .line 195
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a()Lcom/xiaomi/mistatistic/sdk/controller/o;

    move-result-object p1

    .line 196
    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/controller/o;->b()Z

    move-result p2

    if-eqz p2, :cond_52

    .line 197
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a(Landroid/app/Activity;)V

    :cond_52
    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 60
    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaomi/mistatistic/sdk/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    if-eqz p0, :cond_67

    const-string v0, "MI_STAT"

    const-string v1, "initialize %s, %s, %s, %s"

    const/4 v2, 0x4

    .line 67
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v4, 0x2

    aput-object p3, v2, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_37

    move-object v0, p0

    .line 77
    :cond_37
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Landroid/content/Context;)V

    .line 79
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_42

    const-string p3, "mistats_default"

    :cond_42
    invoke-static {v0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a()V

    .line 82
    new-instance p0, Lcom/xiaomi/mistatistic/sdk/controller/e;

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/e;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a()Lcom/xiaomi/mistatistic/sdk/controller/q;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b()V

    .line 85
    sput-boolean v3, Lcom/xiaomi/mistatistic/sdk/f;->i:Z

    if-eqz p4, :cond_5e

    .line 87
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->a()Z

    :cond_5e
    return-void

    .line 69
    :cond_5f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "appID or appKey is empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_67
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Initializing sdk error, reason: context is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 2

    .line 92
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method protected static a(Ljava/lang/String;)V
    .registers 2

    .line 489
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    .line 490
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 493
    :cond_e
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->g()V

    .line 494
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 495
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/g;

    invoke-direct {v0, p0}, Lcom/xiaomi/mistatistic/sdk/data/g;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    .line 497
    :cond_1f
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c()V

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 242
    invoke-static {p0, p1, v0}, Lcom/xiaomi/mistatistic/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5

    const/4 v0, 0x0

    .line 263
    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaomi/mistatistic/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 268
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    .line 269
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 272
    :cond_e
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->g()V

    .line 273
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p0, "default_category"

    :cond_1c
    move-object v1, p0

    .line 278
    new-instance p0, Lcom/xiaomi/mistatistic/sdk/data/f;

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/data/f;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 279
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    .line 280
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c()V

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 300
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    .line 301
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 304
    :cond_e
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->g()V

    .line 305
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p0, "default_category"

    .line 310
    :cond_1c
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/k;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/data/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    .line 312
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c()V

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 247
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    .line 248
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 251
    :cond_e
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->g()V

    .line 252
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p0, "default_category"

    .line 257
    :cond_1c
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 258
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    .line 259
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c()V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .registers 3

    .line 515
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    .line 516
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 519
    :cond_e
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->b()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/MiStatInterface$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface$1;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    .line 525
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c()V

    return-void
.end method

.method public static a(Z)V
    .registers 1

    .line 97
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/r;->a(Z)V

    return-void
.end method

.method public static b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 541
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_10

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    .line 542
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    .line 545
    :cond_10
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->g()V

    .line 546
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->h()Z

    move-result v0

    if-nez v0, :cond_1a

    return-object p2

    .line 549
    :cond_1a
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/b;->a()Lcom/xiaomi/mistatistic/sdk/controller/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/b;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 119
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_10

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    .line 120
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    .line 123
    :cond_10
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b()V
    .registers 0

    .line 165
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a()V

    return-void
.end method

.method public static b(ILjava/lang/String;J)V
    .registers 5

    .line 591
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    .line 592
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 595
    :cond_e
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->g()V

    .line 596
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->h()Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    .line 599
    :cond_18
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/b;->a()Lcom/xiaomi/mistatistic/sdk/controller/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/xiaomi/mistatistic/sdk/controller/b;->b(Ljava/lang/String;JI)V

    .line 600
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c()V

    return-void
.end method

.method public static final b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 228
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    .line 229
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 232
    :cond_e
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->g()V

    .line 233
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/n;->a()Lcom/xiaomi/mistatistic/sdk/controller/n;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a()Lcom/xiaomi/mistatistic/sdk/controller/o;

    move-result-object p0

    .line 236
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->e()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 237
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->f()V

    :cond_25
    return-void
.end method

.method protected static b(Ljava/lang/String;)V
    .registers 2

    .line 501
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    .line 502
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 505
    :cond_e
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->g()V

    .line 506
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 507
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/g;

    invoke-direct {v0, p0}, Lcom/xiaomi/mistatistic/sdk/data/g;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 508
    invoke-virtual {v0, p0}, Lcom/xiaomi/mistatistic/sdk/data/g;->a(I)V

    .line 509
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    .line 511
    :cond_23
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c()V

    return-void
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 316
    invoke-static {p0, p1, v0}, Lcom/xiaomi/mistatistic/sdk/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5

    .line 284
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    .line 285
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 288
    :cond_e
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->g()V

    .line 289
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p0, "default_category"

    .line 294
    :cond_1c
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/j;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/data/j;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 295
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    .line 296
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c()V

    return-void
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 343
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    .line 344
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 347
    :cond_e
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->g()V

    .line 348
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p0, "default_category"

    :cond_1c
    move-object v1, p0

    .line 353
    new-instance p0, Lcom/xiaomi/mistatistic/sdk/data/f;

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/data/f;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    const/4 p1, 0x1

    .line 354
    invoke-virtual {p0, p1}, Lcom/xiaomi/mistatistic/sdk/data/f;->a(I)V

    .line 355
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    .line 356
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c()V

    return-void
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 377
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    .line 378
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 381
    :cond_e
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->g()V

    .line 382
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p0, "default_category"

    .line 387
    :cond_1c
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/k;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/data/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 388
    invoke-virtual {v0, p0}, Lcom/xiaomi/mistatistic/sdk/data/k;->a(I)V

    .line 389
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    .line 390
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c()V

    return-void
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 321
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    .line 322
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 325
    :cond_e
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->g()V

    .line 326
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p0, "default_category"

    .line 331
    :cond_1c
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p0, 0x1

    .line 332
    invoke-virtual {v0, p0}, Lcom/xiaomi/mistatistic/sdk/data/h;->a(I)V

    .line 333
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    .line 334
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c()V

    return-void
.end method

.method public static b(Z)V
    .registers 2

    .line 426
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    .line 427
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 430
    :cond_e
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->e()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    .line 431
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/b;->a(Z)V

    :cond_18
    if-eqz p0, :cond_1c

    const/4 p0, 0x2

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x3

    .line 433
    :goto_1d
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/b;->a(I)V

    return-void
.end method

.method public static final c(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 127
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_10

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    .line 128
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    .line 131
    :cond_10
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 169
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    return-object p0

    :cond_9
    const-string v0, ","

    .line 172
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, ","

    const-string v1, ""

    .line 173
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_19
    return-object p0
.end method

.method public static final c()V
    .registers 2

    const-string v0, ""

    const/4 v1, 0x0

    .line 224
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/f;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static c(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 578
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    .line 579
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 582
    :cond_e
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->g()V

    .line 583
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->h()Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    .line 586
    :cond_18
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/b;->a()Lcom/xiaomi/mistatistic/sdk/controller/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lcom/xiaomi/mistatistic/sdk/controller/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 587
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c()V

    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 417
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "mistat_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_17

    .line 418
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "category cannot start with mistat_"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 420
    :cond_17
    :goto_17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2e

    const-string p0, "mistat_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_2e

    .line 421
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key cannot start with mistat_"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2e
    :goto_2e
    return-void
.end method

.method public static final c(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5

    const/4 v0, 0x0

    .line 338
    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaomi/mistatistic/sdk/f;->b(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method public static c(Z)V
    .registers 2

    .line 464
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    .line 465
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 468
    :cond_e
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->g()V

    .line 469
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/r;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return-void

    .line 472
    :cond_1c
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b(Z)V

    return-void
.end method

.method public static final d()V
    .registers 2

    .line 394
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "MI_STAT"

    const-string v1, "The statistics is disabled."

    .line 395
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 398
    :cond_e
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->g()V

    .line 399
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/l;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a()V

    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5

    .line 360
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string p1, "The statistics is disabled."

    .line 361
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 364
    :cond_e
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->g()V

    .line 365
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p0, "default_category"

    .line 370
    :cond_1c
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/j;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/data/j;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 p0, 0x1

    .line 371
    invoke-virtual {v0, p0}, Lcom/xiaomi/mistatistic/sdk/data/j;->a(I)V

    .line 372
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    .line 373
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c()V

    return-void
.end method

.method public static d(Z)V
    .registers 2

    .line 476
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    .line 477
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 480
    :cond_e
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->g()V

    .line 481
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/r;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return-void

    .line 484
    :cond_1c
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/r;->c(Z)V

    .line 485
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b(Z)V

    return-void
.end method

.method private static d(Landroid/content/Context;)Z
    .registers 2

    const/4 v0, 0x0

    .line 454
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 455
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_d

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0

    :catch_d
    return v0
.end method

.method public static e()Z
    .registers 2

    .line 438
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->d()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public static f()Z
    .registers 2

    .line 442
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static g()V
    .registers 2

    .line 403
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/f;->i:Z

    if-eqz v0, :cond_5

    return-void

    .line 404
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not initialized, do you forget to call initialize when application started?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static h()Z
    .registers 1

    .line 410
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/f;->j:Z

    if-nez v0, :cond_9

    const-string v0, "ABTEST - ABTest  is not registed, do you forget to call ABTestRegister when application started?"

    .line 411
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->d(Ljava/lang/String;)V

    .line 413
    :cond_9
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/f;->j:Z

    return v0
.end method

.method private static i()V
    .registers 2

    const-string v0, "log event without pageStart/pageEnd, ignore."

    .line 446
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;)V

    .line 447
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/f;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    .line 448
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "record pageStart/pageEnd before recording events."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
