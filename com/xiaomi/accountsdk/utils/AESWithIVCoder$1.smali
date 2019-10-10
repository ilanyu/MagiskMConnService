.class Lcom/xiaomi/accountsdk/utils/AESWithIVCoder$1;
.super Lcom/xiaomi/accountsdk/utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/accountsdk/utils/b;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/xiaomi/accountsdk/utils/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/utils/b;Ljava/lang/String;)V
    .registers 3

    .line 28
    iput-object p1, p0, Lcom/xiaomi/accountsdk/utils/AESWithIVCoder$1;->c:Lcom/xiaomi/accountsdk/utils/b;

    invoke-direct {p0, p2}, Lcom/xiaomi/accountsdk/utils/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()[B
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/xiaomi/accountsdk/utils/AESWithIVCoder$1;->c:Lcom/xiaomi/accountsdk/utils/b;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/b;->a(Lcom/xiaomi/accountsdk/utils/b;)[B

    move-result-object v0

    return-object v0
.end method
