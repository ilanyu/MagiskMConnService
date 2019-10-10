.class public Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NextNoneLoginContext"
.end annotation


# instance fields
.field public a:Lcom/xiaomi/accountsdk/account/data/AccountInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;->a:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
