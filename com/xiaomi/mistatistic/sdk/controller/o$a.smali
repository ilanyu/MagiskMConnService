.class Lcom/xiaomi/mistatistic/sdk/controller/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/controller/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/o;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/o;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$a;->a:Lcom/xiaomi/mistatistic/sdk/controller/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .registers 3

    .line 137
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$a;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public b()V
    .registers 3

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$a;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_10

    .line 147
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    const-string v1, "clearActivity exception: "

    .line 150
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    :goto_10
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5

    .line 120
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    .line 121
    aget v0, p1, v0

    const/4 v1, 0x1

    .line 122
    aget v1, p1, v1

    const/4 v2, 0x2

    .line 123
    aget p1, p1, v2

    .line 126
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/16 v2, 0x13

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_26

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_26

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_36

    .line 127
    :cond_26
    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$a;->a:Lcom/xiaomi/mistatistic/sdk/controller/o;

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/o;->b(Lcom/xiaomi/mistatistic/sdk/controller/o;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string p1, "shaking..."

    .line 128
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;)V

    :cond_36
    return-void
.end method
