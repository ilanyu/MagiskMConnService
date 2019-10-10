.class Lcom/xiaomi/accountsdk/request/IPInfos$Index;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/request/IPInfos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Index"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/IPInfos$Index;->a:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/xiaomi/accountsdk/request/IPInfos$Index;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_20

    .line 33
    instance-of v1, p1, Lcom/xiaomi/accountsdk/request/IPInfos$Index;

    if-nez v1, :cond_8

    goto :goto_20

    .line 36
    :cond_8
    check-cast p1, Lcom/xiaomi/accountsdk/request/IPInfos$Index;

    .line 37
    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/IPInfos$Index;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/accountsdk/request/IPInfos$Index;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/IPInfos$Index;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaomi/accountsdk/request/IPInfos$Index;->b:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    return v0

    :cond_20
    :goto_20
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 19
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/IPInfos$Index;->a:Ljava/lang/String;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/IPInfos$Index;->b:Ljava/lang/String;

    if-nez v0, :cond_f

    const-string v0, "null#null"

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    .line 22
    :cond_f
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/IPInfos$Index;->a:Ljava/lang/String;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/IPInfos$Index;->b:Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 23
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/IPInfos$Index;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/IPInfos$Index;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 25
    :cond_25
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/IPInfos$Index;->a:Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 26
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/IPInfos$Index;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    .line 28
    :cond_30
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/IPInfos$Index;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
