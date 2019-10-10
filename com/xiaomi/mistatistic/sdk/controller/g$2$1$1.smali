.class Lcom/xiaomi/mistatistic/sdk/controller/g$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;Ljava/util/List;)V
    .registers 3

    .line 102
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1$1;->b:Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http data complete, result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;)V

    .line 108
    :try_start_14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 109
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "ok"

    const-string v1, "status"

    .line 110
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 111
    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1$1;->b:Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;

    iget-object p1, p1, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/g$2;

    iget-object p1, p1, Lcom/xiaomi/mistatistic/sdk/controller/g$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/h;

    invoke-virtual {p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    goto :goto_39

    :cond_38
    const/4 p1, 0x0

    :goto_39
    if-eqz p1, :cond_60

    .line 116
    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1$1;->b:Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;

    iget-object p1, p1, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/g$2;

    iget-object p1, p1, Lcom/xiaomi/mistatistic/sdk/controller/g$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/h;

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Lcom/xiaomi/mistatistic/sdk/controller/h;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_46} :catch_5a

    .line 118
    :try_start_46
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1$1;->b:Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/g$2;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/controller/g$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/h;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Lcom/xiaomi/mistatistic/sdk/controller/h;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1$1;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 119
    monitor-exit p1

    goto :goto_60

    :catchall_57
    move-exception v0

    monitor-exit p1
    :try_end_59
    .catchall {:try_start_46 .. :try_end_59} :catchall_57

    :try_start_59
    throw v0
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5a} :catch_5a

    :catch_5a
    move-exception p1

    const-string v0, "upload events response exception:"

    .line 122
    invoke-static {v0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_60
    :goto_60
    return-void
.end method
