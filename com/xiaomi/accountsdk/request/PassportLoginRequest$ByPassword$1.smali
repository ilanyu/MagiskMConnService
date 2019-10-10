.class Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword$1;
.super Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$PostAsString;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;->a(Lcom/xiaomi/accountsdk/request/o;)Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;Lcom/xiaomi/accountsdk/request/o;)V
    .registers 3

    .line 151
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword$1;->a:Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;

    invoke-direct {p0, p2}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$PostAsString;-><init>(Lcom/xiaomi/accountsdk/request/o;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/p;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword$1;->a:Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;->a(Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;)Lcom/xiaomi/accountsdk/account/data/h;

    move-result-object v0

    if-nez v0, :cond_46

    .line 157
    :try_start_8
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword$1;->a:Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;->b(Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword$1;->a:Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;

    invoke-static {v1}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;->c(Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/h;

    move-result-object v0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_44
    .catch Lcom/xiaomi/accountsdk/request/k; {:try_start_8 .. :try_end_18} :catch_3d
    .catch Lcom/xiaomi/accountsdk/request/a; {:try_start_8 .. :try_end_18} :catch_36
    .catch Lcom/xiaomi/accountsdk/request/c; {:try_start_8 .. :try_end_18} :catch_2f
    .catch Lcom/xiaomi/accountsdk/account/a/l; {:try_start_8 .. :try_end_18} :catch_28

    if-eqz v0, :cond_1b

    goto :goto_46

    .line 170
    :cond_1b
    new-instance v0, Lcom/xiaomi/accountsdk/request/p;

    new-instance v1, Lcom/xiaomi/accountsdk/request/k;

    const-string v2, "Empty meta login data"

    invoke-direct {v1, v2}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/p;-><init>(Lcom/xiaomi/accountsdk/request/k;)V

    throw v0

    :catch_28
    move-exception v0

    .line 167
    new-instance v1, Lcom/xiaomi/accountsdk/request/p;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/p;-><init>(Lcom/xiaomi/accountsdk/account/a/l;)V

    throw v1

    :catch_2f
    move-exception v0

    .line 165
    new-instance v1, Lcom/xiaomi/accountsdk/request/p;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/p;-><init>(Lcom/xiaomi/accountsdk/request/c;)V

    throw v1

    :catch_36
    move-exception v0

    .line 163
    new-instance v1, Lcom/xiaomi/accountsdk/request/p;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/p;-><init>(Lcom/xiaomi/accountsdk/request/a;)V

    throw v1

    :catch_3d
    move-exception v0

    .line 161
    new-instance v1, Lcom/xiaomi/accountsdk/request/p;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/p;-><init>(Lcom/xiaomi/accountsdk/request/k;)V

    throw v1

    :catch_44
    move-exception v0

    .line 159
    throw v0

    .line 173
    :cond_46
    :goto_46
    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword$1;->b:Lcom/xiaomi/accountsdk/request/o;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/request/o;->a:Lcom/xiaomi/accountsdk/utils/k;

    const-string v2, "_sign"

    iget-object v3, v0, Lcom/xiaomi/accountsdk/account/data/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    .line 174
    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword$1;->b:Lcom/xiaomi/accountsdk/request/o;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/request/o;->a:Lcom/xiaomi/accountsdk/utils/k;

    const-string v2, "qs"

    iget-object v3, v0, Lcom/xiaomi/accountsdk/account/data/h;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    .line 175
    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword$1;->b:Lcom/xiaomi/accountsdk/request/o;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/request/o;->a:Lcom/xiaomi/accountsdk/utils/k;

    const-string v2, "callback"

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    .line 176
    invoke-super {p0}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$PostAsString;->a()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v0

    return-object v0
.end method
