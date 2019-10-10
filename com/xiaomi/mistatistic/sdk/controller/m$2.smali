.class Lcom/xiaomi/mistatistic/sdk/controller/m$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xiaomi/mistatistic/sdk/controller/n;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/n;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 67
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/m$2;->c:Lcom/xiaomi/mistatistic/sdk/controller/n;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/controller/m$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/mistatistic/sdk/controller/m$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 70
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/m$2;->c:Lcom/xiaomi/mistatistic/sdk/controller/n;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/m$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/m$2;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/n;->a(Lcom/xiaomi/mistatistic/sdk/controller/n;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
