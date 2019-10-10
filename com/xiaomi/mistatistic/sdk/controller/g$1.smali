.class Lcom/xiaomi/mistatistic/sdk/controller/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/h;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/h;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/g$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/mistatistic/sdk/data/b;)Lcom/xiaomi/mistatistic/sdk/data/b;
    .registers 4

    .line 59
    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/data/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "\\?"

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 62
    invoke-virtual {p1, v0}, Lcom/xiaomi/mistatistic/sdk/data/b;->b(Ljava/lang/String;)V

    return-object p1

    :cond_17
    const/4 p1, 0x0

    return-object p1
.end method
