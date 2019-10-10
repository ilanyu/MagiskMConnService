.class Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/g$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/g$2;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/g$2;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/g$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    .line 89
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/g$2;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/controller/g$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/h;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->c()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 91
    :try_start_a
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/g$2;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/controller/g$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/h;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b()Ljava/util/List;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_71

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_71

    add-int/lit8 v3, v2, 0x1e

    if-lt v3, v1, :cond_24

    .line 97
    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    goto :goto_28

    .line 99
    :cond_24
    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 102
    :goto_28
    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/g$2;

    iget-object v4, v4, Lcom/xiaomi/mistatistic/sdk/controller/g$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/h;

    new-instance v5, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1$1;

    invoke-direct {v5, p0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;Ljava/util/List;)V

    invoke-static {v4, v2, v5}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Lcom/xiaomi/mistatistic/sdk/controller/h;Ljava/util/List;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_34} :catch_3d
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_34} :catch_36

    move v2, v3

    goto :goto_19

    :catch_36
    move-exception v0

    const-string v1, ""

    .line 131
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_71

    :catch_3d
    move-exception v0

    const-string v1, ""

    .line 129
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_71

    .line 135
    :cond_44
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/g$2;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/controller/g$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/h;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->d()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 136
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 138
    :try_start_53
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/g$2;

    iget-object v1, v1, Lcom/xiaomi/mistatistic/sdk/controller/g$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/h;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1$2;

    invoke-direct {v2, p0}, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1$2;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_63} :catch_6b
    .catch Lorg/json/JSONException; {:try_start_53 .. :try_end_63} :catch_64

    goto :goto_71

    :catch_64
    move-exception v0

    const-string v1, ""

    .line 147
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_71

    :catch_6b
    move-exception v0

    const-string v1, ""

    .line 145
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_71
    :goto_71
    return-void
.end method
