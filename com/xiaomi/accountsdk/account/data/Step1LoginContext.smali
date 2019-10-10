.class public Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;,
        Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;,
        Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;,
        Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;,
        Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

.field private b:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 113
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$1;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$1;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    .line 128
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->b:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    if-ne v0, v1, :cond_32

    .line 129
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;-><init>()V

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;->a:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;->b:Ljava/lang/String;

    .line 132
    new-instance v1, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;->c:Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    .line 133
    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->b:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;

    goto :goto_7c

    .line 134
    :cond_32
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->c:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    if-ne v0, v1, :cond_5f

    .line 135
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;-><init>()V

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->a:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 140
    new-instance v4, Lcom/xiaomi/accountsdk/account/data/h;

    invoke-direct {v4, v1, v2, v3}, Lcom/xiaomi/accountsdk/account/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->b:Lcom/xiaomi/accountsdk/account/data/h;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->c:Ljava/lang/String;

    .line 142
    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->b:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;

    goto :goto_7c

    .line 143
    :cond_5f
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    if-ne v0, v1, :cond_7c

    .line 144
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;-><init>()V

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    iput-object p1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;->a:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    .line 146
    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->b:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;

    :cond_7c
    :goto_7c
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$1;)V
    .registers 3

    .line 10
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    .line 46
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;-><init>()V

    .line 47
    iput-object p1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;->a:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    .line 48
    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->b:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 5

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    instance-of v0, p1, Lcom/xiaomi/accountsdk/account/a/o;

    if-eqz v0, :cond_27

    .line 53
    check-cast p1, Lcom/xiaomi/accountsdk/account/a/o;

    .line 55
    sget-object v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->b:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    .line 57
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;-><init>()V

    .line 59
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/a/o;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;->a:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/a/o;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;->b:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/a/o;->c()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p1

    iput-object p1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;->c:Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    .line 62
    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->b:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;

    goto :goto_4a

    .line 63
    :cond_27
    instance-of v0, p1, Lcom/xiaomi/accountsdk/account/a/q;

    if-eqz v0, :cond_4b

    .line 64
    check-cast p1, Lcom/xiaomi/accountsdk/account/a/q;

    .line 66
    sget-object v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->c:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    .line 68
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;-><init>()V

    .line 70
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/a/q;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->a:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/a/q;->a()Lcom/xiaomi/accountsdk/account/data/h;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->b:Lcom/xiaomi/accountsdk/account/data/h;

    .line 72
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/a/q;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->c:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->b:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;

    :goto_4a
    return-void

    .line 75
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported. "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    return-object v0
.end method

.method public b()Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->b:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 93
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->b:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    if-ne v0, v1, :cond_27

    .line 96
    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->b:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;

    check-cast p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;

    .line 97
    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object p2, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;->c:Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_60

    .line 100
    :cond_27
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->c:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    if-ne v0, v1, :cond_51

    .line 101
    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->b:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;

    check-cast p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;

    .line 102
    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->b:Lcom/xiaomi/accountsdk/account/data/h;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/h;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->b:Lcom/xiaomi/accountsdk/account/data/h;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/h;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->b:Lcom/xiaomi/accountsdk/account/data/h;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/h;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object p2, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_60

    .line 107
    :cond_51
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    if-ne v0, v1, :cond_60

    .line 108
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->b:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;

    .line 109
    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;->a:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_60
    :goto_60
    return-void
.end method
