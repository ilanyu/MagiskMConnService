.class Lcom/xiaomi/mistatistic/sdk/controller/p$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/q;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/q;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/q;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .line 84
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/q;

    const-string v2, "upload_policy"

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a(Lcom/xiaomi/mistatistic/sdk/controller/q;I)I

    .line 86
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/q;

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a(Lcom/xiaomi/mistatistic/sdk/controller/q;)I

    move-result v1

    if-ne v1, v3, :cond_27

    .line 87
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/q;

    const-string v2, "upload_interval"

    const-wide/32 v3, 0x2bf20

    invoke-static {v0, v2, v3, v4}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a(Lcom/xiaomi/mistatistic/sdk/controller/q;J)J

    goto :goto_2e

    .line 89
    :cond_27
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/q;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a(Lcom/xiaomi/mistatistic/sdk/controller/q;J)J

    :goto_2e
    return-void
.end method
