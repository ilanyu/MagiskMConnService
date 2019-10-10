.class Lcom/xiaomi/mistatistic/sdk/controller/p$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/q;->d()V
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

    .line 158
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$4;->a:Lcom/xiaomi/mistatistic/sdk/controller/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 163
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->e()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 164
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/f;->f()Z

    move-result v0

    if-nez v0, :cond_28

    .line 165
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/mistatistic/sdk/b$a;

    const/4 v2, 0x0

    .line 167
    invoke-static {v1, v2}, Lcom/xiaomi/mistatistic/sdk/b;->a(Lcom/xiaomi/mistatistic/sdk/b$a;Z)V

    goto :goto_14

    .line 170
    :cond_25
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->c()V

    :cond_28
    return-void
.end method
