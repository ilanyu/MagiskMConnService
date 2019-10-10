.class Lcom/xiaomi/mistatistic/sdk/controller/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/controller/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/e$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 53
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/e$a;->a:Landroid/content/Context;

    const-string v1, "imei"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/m;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 54
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/e$a;->a:Landroid/content/Context;

    const-string v1, "imei"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/m;->d(Landroid/content/Context;Ljava/lang/String;)Z

    .line 57
    :cond_11
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/e$a;->a:Landroid/content/Context;

    const-string v1, "device_id"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 59
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/e$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2e

    .line 61
    :cond_2b
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Ljava/lang/String;)Ljava/lang/String;

    :goto_2e
    return-void
.end method
