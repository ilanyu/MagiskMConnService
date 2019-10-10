.class public Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;,
        Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/lang/String; = "error_code"

.field private static final h:Ljava/lang/String; = "error_msg"

.field private static final i:Ljava/lang/String; = "visible"

.field private static final j:Ljava/lang/String; = "account"

.field private static final k:Ljava/lang/String; = "build_sdk_version"

.field private static final l:Ljava/lang/String; = "new_choose_account_intent"


# instance fields
.field public final a:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Landroid/accounts/Account;

.field public final e:I

.field public final f:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 109
    new-instance v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$1;

    invoke-direct {v0}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$1;-><init>()V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 84
    invoke-static {}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->values()[Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    move-result-object v0

    const-string v1, "error_code"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->a:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    const-string v0, "error_msg"

    .line 85
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->b:Ljava/lang/String;

    const-string v0, "visible"

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->c:Z

    const-string v0, "account"

    .line 87
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->d:Landroid/accounts/Account;

    const-string v0, "build_sdk_version"

    .line 88
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->e:I

    const-string v0, "new_choose_account_intent"

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->f:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;)V
    .registers 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->a(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->a:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 69
    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->b(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->b:Ljava/lang/String;

    .line 70
    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->c(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->c:Z

    .line 71
    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->d(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->d:Landroid/accounts/Account;

    .line 72
    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->e(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->e:I

    .line 73
    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->f(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->f:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 123
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "AccountVisibility{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, ", errorCode="

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->a:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", errorMessage=\'"

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, ", accountVisible=\'"

    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v2, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->c:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 99
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "error_code"

    .line 100
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->a:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    invoke-virtual {v1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ordinal()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "error_msg"

    .line 101
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->b:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "visible"

    .line 102
    iget-boolean v1, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->c:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "account"

    .line 103
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->d:Landroid/accounts/Account;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "build_sdk_version"

    .line 104
    iget v1, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->e:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "new_choose_account_intent"

    .line 105
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->f:Landroid/content/Intent;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 106
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
