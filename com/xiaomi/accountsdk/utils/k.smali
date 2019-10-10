.class public Lcom/xiaomi/accountsdk/utils/k;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final a:J = -0x6ce2b6116f77ee9bL


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/accountsdk/utils/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/xiaomi/accountsdk/utils/k<",
            "TK;TV;>;"
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/accountsdk/utils/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/xiaomi/accountsdk/utils/k<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_12

    if-eqz p2, :cond_12

    .line 26
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 27
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    .line 28
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/2addr v0, v1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :cond_13
    :goto_13
    if-eqz v0, :cond_18

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/accountsdk/utils/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-object p0
.end method
