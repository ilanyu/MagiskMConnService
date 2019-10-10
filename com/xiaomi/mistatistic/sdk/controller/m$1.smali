.class Lcom/xiaomi/mistatistic/sdk/controller/m$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/n;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/n;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/n;Landroid/os/Looper;)V
    .registers 3

    .line 41
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/m$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/n;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 44
    iget p1, p1, Landroid/os/Message;->what:I

    const v0, 0x1df5e77

    if-eq p1, v0, :cond_8

    goto :goto_3b

    .line 46
    :cond_8
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object p1

    const-string v0, "session_begin"

    const-wide/16 v1, 0x0

    .line 47
    invoke-static {p1, v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v3

    const-string v0, "last_deactivate"

    .line 48
    invoke-static {p1, v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v5

    const-string v0, "pv_path"

    const-string v7, ""

    .line 49
    invoke-static {p1, v0, v7}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    cmp-long v1, v3, v1

    if-lez v1, :cond_30

    cmp-long v1, v5, v3

    if-lez v1, :cond_30

    .line 52
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/m$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/n;

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/mistatistic/sdk/controller/n;->a(Lcom/xiaomi/mistatistic/sdk/controller/n;Landroid/content/Context;JJ)V

    .line 54
    :cond_30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 56
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/m$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/n;

    invoke-static {v1, p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/n;->a(Lcom/xiaomi/mistatistic/sdk/controller/n;Landroid/content/Context;Ljava/lang/String;)V

    :cond_3b
    :goto_3b
    return-void
.end method
