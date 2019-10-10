.class public Lcom/xiaomi/mistatistic/sdk/controller/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/controller/o$a;
    }
.end annotation


# static fields
.field private static d:Lcom/xiaomi/mistatistic/sdk/controller/o;


# instance fields
.field private a:J

.field private b:Z

.field private c:Lcom/xiaomi/mistatistic/sdk/controller/o$a;

.field private e:Landroid/os/Handler;

.field private f:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->a:J

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->f:Z

    .line 51
    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->b:Z

    .line 52
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/o$a;

    invoke-direct {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/o$a;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/o;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->c:Lcom/xiaomi/mistatistic/sdk/controller/o$a;

    .line 53
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/o$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/o$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/o;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/o;)Lcom/xiaomi/mistatistic/sdk/controller/o$a;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->c:Lcom/xiaomi/mistatistic/sdk/controller/o$a;

    return-object p0
.end method

.method public static a()Lcom/xiaomi/mistatistic/sdk/controller/o;
    .registers 1

    .line 44
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->d:Lcom/xiaomi/mistatistic/sdk/controller/o;

    if-nez v0, :cond_b

    .line 45
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/o;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/o;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->d:Lcom/xiaomi/mistatistic/sdk/controller/o;

    .line 47
    :cond_b
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->d:Lcom/xiaomi/mistatistic/sdk/controller/o;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/o;Landroid/app/Activity;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/o;->c(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/mistatistic/sdk/controller/o;)Landroid/os/Handler;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->e:Landroid/os/Handler;

    return-object p0
.end method

.method private c(Landroid/app/Activity;)V
    .registers 4

    .line 181
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->b()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/o$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/o$2;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/o;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 7

    const-string v0, "sensor"

    .line 91
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 92
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->c:Lcom/xiaomi/mistatistic/sdk/controller/o$a;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 93
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->c:Lcom/xiaomi/mistatistic/sdk/controller/o$a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/o$a;->a(Landroid/app/Activity;)V

    .line 94
    iput-boolean v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->f:Z

    const-string p1, "enable AcceleroMeterSensor..."

    .line 95
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/app/Activity;)Ljava/io/File;
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 158
    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 159
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    .line 160
    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 162
    invoke-virtual {p1}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    .line 163
    new-instance v0, Ljava/io/File;

    const-string v2, "snapshot.jpg"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 165
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 166
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {v1, v2, v3, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 167
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-object v0
.end method

.method public b()Z
    .registers 2

    .line 70
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->b:Z

    return v0
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->b:Z

    return-void
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->b:Z

    .line 79
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 80
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->f()V

    :cond_c
    return-void
.end method

.method public e()Z
    .registers 2

    .line 85
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->f:Z

    return v0
.end method

.method public f()V
    .registers 4

    .line 99
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 101
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->c:Lcom/xiaomi/mistatistic/sdk/controller/o$a;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->f:Z

    .line 103
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->c:Lcom/xiaomi/mistatistic/sdk/controller/o$a;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/o$a;->b()V

    const-string v0, "disable AcceleroMeterSensor..."

    .line 104
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .registers 3

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->a:J

    return-void
.end method

.method public h()Z
    .registers 7

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->a:J

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method
