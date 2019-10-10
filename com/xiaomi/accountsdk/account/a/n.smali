.class public Lcom/xiaomi/accountsdk/account/a/n;
.super Lcom/xiaomi/accountsdk/account/a/a;
.source "SourceFile"


# static fields
.field private static final e:J = 0x1L


# instance fields
.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/accountsdk/account/a/a;-><init>(ILjava/lang/String;)V

    .line 17
    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/a/n;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const-string v0, "Need captcha code or wrong captcha code"

    const v1, 0x153d9

    .line 12
    invoke-direct {p0, v1, v0, p1}, Lcom/xiaomi/accountsdk/account/a/n;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/a/n;->f:Ljava/lang/String;

    return-object v0
.end method
