.class Lcom/xiaomi/mistatistic/sdk/controller/a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/a$1;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/a$1;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/a$1$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/a$1$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/a$1;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/controller/a$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/b;

    invoke-static {v0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/b;->a(Lcom/xiaomi/mistatistic/sdk/controller/b;Ljava/lang/String;)V

    return-void
.end method
