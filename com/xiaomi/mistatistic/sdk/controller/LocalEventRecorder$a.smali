.class Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/xiaomi/mistatistic/sdk/data/a;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/data/a;)V
    .registers 2

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$a;->a:Lcom/xiaomi/mistatistic/sdk/data/a;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    .line 179
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$a;->a:Lcom/xiaomi/mistatistic/sdk/data/a;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/data/a;->c()Lcom/xiaomi/mistatistic/sdk/data/c;

    move-result-object v0

    .line 180
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/g;

    invoke-direct {v1}, Lcom/xiaomi/mistatistic/sdk/controller/g;-><init>()V

    .line 181
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$a;->a:Lcom/xiaomi/mistatistic/sdk/data/a;

    instance-of v2, v2, Lcom/xiaomi/mistatistic/sdk/data/j;

    if-nez v2, :cond_1c

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$a;->a:Lcom/xiaomi/mistatistic/sdk/data/a;

    instance-of v2, v2, Lcom/xiaomi/mistatistic/sdk/data/k;

    if-eqz v2, :cond_18

    goto :goto_1c

    .line 197
    :cond_18
    invoke-virtual {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Lcom/xiaomi/mistatistic/sdk/data/c;)V

    goto :goto_3a

    .line 183
    :cond_1c
    :goto_1c
    iget-object v2, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->c:Ljava/lang/String;

    .line 184
    iget-object v3, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->a:Ljava/lang/String;

    .line 185
    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/c;

    move-result-object v4

    if-eqz v4, :cond_37

    .line 186
    iget-object v5, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->d:Ljava/lang/String;

    iget-object v4, v4, Lcom/xiaomi/mistatistic/sdk/data/c;->d:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    goto :goto_37

    .line 191
    :cond_31
    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/data/c;->e:Ljava/lang/String;

    .line 192
    invoke-virtual {v1, v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    .line 188
    :cond_37
    :goto_37
    invoke-virtual {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Lcom/xiaomi/mistatistic/sdk/data/c;)V

    :goto_3a
    return-void
.end method
