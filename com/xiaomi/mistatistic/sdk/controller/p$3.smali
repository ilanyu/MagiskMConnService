.class Lcom/xiaomi/mistatistic/sdk/controller/p$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/q;->a(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Lcom/xiaomi/mistatistic/sdk/controller/q;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/q;IJ)V
    .registers 5

    .line 99
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/q;

    iput p2, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$3;->a:I

    iput-wide p3, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$3;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .line 103
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/q;

    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$3;->a:I

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a(Lcom/xiaomi/mistatistic/sdk/controller/q;I)I

    .line 104
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/q;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a(Lcom/xiaomi/mistatistic/sdk/controller/q;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_18

    .line 105
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/q;

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$3;->b:J

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a(Lcom/xiaomi/mistatistic/sdk/controller/q;J)J

    goto :goto_1f

    .line 107
    :cond_18
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/q;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a(Lcom/xiaomi/mistatistic/sdk/controller/q;J)J

    .line 109
    :goto_1f
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "upload_policy"

    .line 110
    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/q;

    invoke-static {v3}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a(Lcom/xiaomi/mistatistic/sdk/controller/q;)I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 111
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/q;

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a(Lcom/xiaomi/mistatistic/sdk/controller/q;)I

    move-result v2

    if-ne v2, v1, :cond_53

    const-string v1, "upload_interval"

    .line 112
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/q;

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b(Lcom/xiaomi/mistatistic/sdk/controller/q;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 114
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/p$3$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/p$3$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/p$3;)V

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/q;

    .line 122
    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b(Lcom/xiaomi/mistatistic/sdk/controller/q;)J

    move-result-wide v2

    .line 114
    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;J)V

    :cond_53
    return-void
.end method
