.class public Lcom/xiaomi/mistatistic/sdk/CustomSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/CustomSettings$a;
    }
.end annotation


# static fields
.field private static a:Z = false

.field private static b:Z = false

.field private static c:Z = true

.field private static d:Z = false

.field private static e:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 2

    .line 44
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "MI_STAT"

    const-string v1, "The statistics is disabled."

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 48
    :cond_e
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;)V

    .line 49
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/CustomSettings$a;

    invoke-direct {v1}, Lcom/xiaomi/mistatistic/sdk/CustomSettings$a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1

    .line 28
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Z)V
    .registers 2

    .line 62
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    .line 63
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 66
    :cond_e
    sput-boolean p0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->a:Z

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 1

    .line 32
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Z)V
    .registers 2

    .line 74
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    .line 75
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    if-eqz p0, :cond_1f

    .line 78
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1f

    return-void

    .line 81
    :cond_1f
    sput-boolean p0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->b:Z

    return-void
.end method

.method public static b()Z
    .registers 1

    .line 70
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->a:Z

    return v0
.end method

.method public static c(Ljava/lang/String;)V
    .registers 1

    .line 36
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Z)V
    .registers 2

    .line 89
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    .line 90
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 93
    :cond_e
    sput-boolean p0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->c:Z

    if-eqz p0, :cond_1e

    .line 95
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->b()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object p0

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/CustomSettings$1;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/CustomSettings$1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    :cond_1e
    return-void
.end method

.method public static c()Z
    .registers 1

    .line 85
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->b:Z

    return v0
.end method

.method public static d(Ljava/lang/String;)V
    .registers 1

    .line 40
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Z)V
    .registers 2

    .line 113
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    .line 114
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 117
    :cond_e
    sput-boolean p0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->d:Z

    return-void
.end method

.method public static d()Z
    .registers 1

    .line 105
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->c:Z

    return v0
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2

    .line 138
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    .line 139
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const/4 v0, 0x1

    .line 142
    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/g;->b:Z

    .line 143
    sput-object p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->a:Ljava/lang/String;

    return-void
.end method

.method public static e(Z)V
    .registers 2

    .line 125
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    .line 126
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 129
    :cond_e
    sput-boolean p0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->e:Z

    return-void
.end method

.method public static e()Z
    .registers 1

    .line 109
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->d:Z

    return v0
.end method

.method public static f()Z
    .registers 1

    .line 121
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->e:Z

    return v0
.end method
