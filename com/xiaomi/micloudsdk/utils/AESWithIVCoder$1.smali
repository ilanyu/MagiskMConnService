.class Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder$1;
.super Lcom/xiaomi/micloudsdk/utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/micloudsdk/utils/b;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/xiaomi/micloudsdk/utils/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/micloudsdk/utils/b;Ljava/lang/String;)V
    .registers 3

    .line 25
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder$1;->c:Lcom/xiaomi/micloudsdk/utils/b;

    invoke-direct {p0, p2}, Lcom/xiaomi/micloudsdk/utils/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()[B
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder$1;->c:Lcom/xiaomi/micloudsdk/utils/b;

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/utils/b;->a(Lcom/xiaomi/micloudsdk/utils/b;)[B

    move-result-object v0

    return-object v0
.end method
